# Zemus

Zemus is a ruby gem that translates URLs into embedable code you can insert on a page.  It does its magic by simply inspecting and hacking up the URL itself, it makes no external requests to a webservice.

It currently translates the follow URLs to embedabble HTML:

* images
* mp3s
* youtube
* vimeo
* vine
* kickstarter
* soundcloud

## Installation

Add this line to your application's Gemfile:

    gem 'zemus', :git => 'https://github.com/jdodson/zemus.git'

And then execute:

    $ bundle

## Usage

    Zemus.embed("http://i.imgur.com/r8JB38S.jpg")

    Zemus.embed("http://www.youtube.com/watch?v=bjAcMDGJcHI")

    Zemus.embed("http://www.podtrac.com/pts/redirect.mp3/content.duckfeed.tv/bsc/bsc_E001.mp3")

    Zemus.embed("https://soundcloud.com/destructoid/super-mario-world-by-video")

    Zemus.embed("http://vimeo.com/21929292")

    Zemus.embed("https://vine.co/v/bFPjjheVnau/embed/simple")

## TODO / Contributions

When we output HTML for images and other iframes we tack on some HTML and classes some people may not need.  For instance, to get the images we embed to be responsive we tack on the Bootstrap 3 "img-responsive img-thumbnail" classes.  We also put a link under the Kickstarter embed to take the person to the page itself.  I totally get some people may not want that so feel free to submit a patch to pull this stuff these extras to a config.

If there is another URL you want to embed, submit the patch.  As long as you can create the embed from the URL itself, we will consider the patch.  Also, we currently want to keep the things we embed to HTML5 widgets.

## They That Created The Greatness

Zemus was extracted from and is running in production at http://cheerfulghost.com by Jon Dodson and Mark Tabler.

## Even more

Zemus was named after the antagonist of Final Fantasy IV.

http://finalfantasy.wikia.com/wiki/Zemus