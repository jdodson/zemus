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

    gem 'zemus', :git => 'git@github.com:jdodson/zemus.git'

And then execute:

    $ bundle

## Usage

    Zemus.embed("www.google.com/sample.gif")

    Zemus.embed("youtube.com/watch?v=Ai7pMPCDHpo")

    Zemus.embed("http://www.podtrac.com/pts/redirect.mp3/content.duckfeed.tv/bsc/bsc_E001.mp3")

    Zemus.embed("https://soundcloud.com/destructoid/super-mario-world-by-video")

    Zemus.embed("http://vimeo.com/21929292")

    Zemus.embed("https://vine.co/v/bFPjjheVnau/embed/simple")

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## They That Created The Greatness

Zemus was extracted from and is running in production at http://cheerfulghost.com by Jon Dodson and Mark Tabler.

## Even more

Zemus was named after the antagonist of Final Fantasy IV.

http://finalfantasy.wikia.com/wiki/Zemus