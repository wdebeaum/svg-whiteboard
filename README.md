# SVG Whiteboard

A simple drawing application written as a standalone webpage.

Written in 2016 by William de Beaumont

To the extent possible under law, the author(s) have dedicated all copyright and related and neighboring rights to this software to the public domain worldwide. This software is distributed without any warranty.

You should have received a copy of the CC0 Public Domain Dedication along with this software. If not, see http://creativecommons.org/publicdomain/zero/1.0/ .

Please note that this dedication applies to the application, and not to works created using the application, even though such works may contain most or all of the original application code. In particular, the dedication does not apply to the contents of the two elements identified by the `id` attributes `"doc"` and `"selection"`. These two elements are empty in the original application.

## Introduction

SVG Whiteboard is a simple drawing application written as a standalone webpage. It requires no external resources besides a reasonably modern web browser. So you can download it, and use it from your own computer without even being connected to the Internet. You can save your work to a file on your computer, and that file will also contain the complete application. If you send that file to someone else, they will be able to open and edit it in the same way you did: with just a web browser.

Try it online: http://www.uofr.net/~willdb/software/whiteboard.html

## Features

 - Draw freehand lines.
 - Type text.
 - Import image or text files.
 - Draw connecting arrows among any of the above three kinds of objects, which stay connected when the objects move.
 - Five pen widths/text sizes.
 - Default palette of 7 colors.
 - Add, remove, and change colors in the palette.
 - Move and copy existing objects.
 - Change size and color of existing objects.
 - Re-edit existing text objects.
 - Delete objects.
 - Undo/redo list.
 - Pan and zoom.
 - Practically infinite board space.
 - Optional fisheye effect helps you see where you're going while panning.
 - Standalone HTML file, no external resources, no server required.
 - Save your work to a file on your computer. Saved files contain a copy of the whole application.
 - Integrated help text. Click the menu icon in the top left, and then click on "Help...", to find out how to use all of these features!
 - Live collaboration across the Internet. (Work in progress)
  - Whiteboard contents are shared while collaborating.
  - Text chat.
  - Requires an installation of the `relay.pl` CGI script somewhere public (it uses mine by default, but you can change it).
  - May also require STUN/TURN servers for NAT traversal (again, there are a few it uses by default, but you can change them).

### Planned

 - See TODO file for full list.

## Browser support

I test on the Firefox and Chrome browsers regularly. Less modern browsers like IE/Edge and Safari might break certain features, or break completely. Complain to Microsoft and Apple, tell them to get with the times and implement all the standard APIs that Mozilla and Google have!

## SVG Whiteboard is not...

 - ...big. It's a little over 140KB, which is nothing these days. Google's homepage is about six times bigger.
 - ...expensive. It's free! Nothing to purchase, no premium subscription, no ads, just free. Because I love you and I want you to be happy.
 - ...a bitmap editor like MS Paint, Photoshop, or The GIMP. Too pixelly.
 - ...a full SVG editor like Inkscape. Too complicated.
 - ...a full diagram editor like OmniGraffle or xfig. Still too complicated. The limited set of primitives and operations is a deliberate design choice. You can do pretty much what you can do on a physical whiteboard, plus a few extra things whose usefulness outweighs the effort required to implement them and the clutter they add to the UI. (Don't get me wrong, I like these other applications, I just have different goals.)
 - ...your mother. It won't spy on you. It won't try to get you to do things you don't want to do. It won't tell you what you may or may not do with what you create. It won't even restrict what you can do with the application itself; if you want a feature, add it, you have all the code!

