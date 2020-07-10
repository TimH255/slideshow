# slideshow
A very simple html based slideshow

***I've created a vastly improved and updated version now - just leaving this on for interest's sake. I'll upload the newer version when I get the chance.***

I needed to create a means of displaying slides on plasma screens in the workplace,
which had to run off a file stored on a network drive.

It needed to be easy for anyone to update content, without having to interact directly
with the computer driving the display screens.

The slideshow itself needed to run continuously and be capable of being updated on
the fly.

I had no tools available to me other than Notepad and was not able to set up any form
of server.

The solution came after scouring the internet for snippets of info and consists of the
following:

slideshow.html which has a single div containing a number of jpegs that fill the
available space and are alternately turned on and off by a simple bit of javascript. The
basic idea for this came from w3schools.com

style.css is very basic. I intend to play around with things a bit in the future, but
it suits my needs at the moment.

script.js is housed in a separate file, because the html for the page is created dynamically by a
batch file (update.bat) that sits in the images subfolder, along with all the jpegs.

Running update.bat creates the html in the parent folder, with all the jpegs as
individual img elements.

In order to work as intended, the images all have names beginning "Slide" and are displayed
in alphabetical order.

Additionally, each slide name can be appended by an _ and a two digit number. When the html
is created, this two digit number becomes a pseudo id, which the javascript then uses to
define the time the slide is displayed for. I have very little experience of batch files,
so getting this working took several trips to stackoverflow and other sites!

Slides without the _ are displayed for a default period (as the script is currently written,
this is 10 seconds).

Finally, after the final slide is displayed, the page refreshes, thereby picking up any new
slides, or changes to slide order and display time.

I am not a programmer, so please forgive me if my coding is unconventional etc. The important
thing is that it works!

This is designed for displaying slides full screen on widescreen displays, hence all the sample slides are
16:9 format. It will obviously work with any image file recognised by html.
