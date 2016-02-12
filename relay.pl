#!/usr/bin/perl

# relay.pl - CGI script for relaying one-line text messages between clients who share a (non-cryptographic) key

use strict;
use POSIX qw(mkfifo);

# directory to make fifo files in
my $fifo_dir = '../fifos';
# time after which stale fifos are removed
my $fifo_timeout = 86400; # seconds (1 day)

# HTTP response headers
print "Content-type: text/plain\r\n" .
      "Access-Control-Allow-Origin: *\r\n" . #allow cross-origin requests (CORS)
      "\r\n";

# clean stale fifos, but keep going if we fail
eval {
  opendir DIR, $fifo_dir or die "Can't open fifo dir: $!";
  while (my $file = readdir DIR) {
    my $path = "$fifo_dir/$file";
    unlink $path if (-p $path and $fifo_timeout < -M $path);
  }
  closedir DIR;
  1
} || print STDERR "Warning: failed to clean stale fifos: $@";

# get CGI args
$ENV{REQUEST_METHOD} eq 'GET' or die "must use GET method\n";
$ENV{QUERY_STRING} =~ /^k=([\w-]+)(\&m=.*)?$/ or die "only parameters must be k and optionally m, in that order, and k's value must be alphanumeric, underscores, and dashes\n";
my ($k, $m) = ($1, $2);

# make the fifo unless it exists already
$k = "$fifo_dir/$k";
mkfifo($k, 0600) unless (-e $k);

if ($m) { # send message m
  $m =~ s/^\&m=//; # remove URL junk
  # URL-decode
  $m =~ s/\+/ /g;
  $m =~ s/%([0-9A-F]{2})/chr(hex($1))/ge;
  $m =~ s/[\r\n]/ /g; # one line per message
  # send the decoded message
  open FIFO, ">$k" or die "Can't open >$k: $!";
  print FIFO "$m\n";
  close FIFO;
} else { # receive one message
  open FIFO, "<$k" or die "Can't open <$k: $!";
  my $line = <FIFO>;
  close FIFO;
  print $line;
}

