# PatternTap

This provides a simple wrapper for retrieving information about the latest PatternTap posts.

## Installation

Add this line to your application's Gemfile:

    gem 'patterntap'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install patterntap

## Usage

You can use the following code to access PatternTap posts in your application:

    PatternTap.recent
    
That will return the most recent 10 posts from PatternTap.  Each PatternTap post has the following methods defined on it:

  * URL: The url to the post
  * Title: The title of the post
  * Image URL: The url to the image associated with post
  * Date: The date the post was published

## Example

    irb(main):002:0> post = PatternTap.recent.first
    irb(main):003:0> post.title
    => "Intro Slideshow from Evernote Hello"
    irb(main):004:0> post.url
    => "http://patterntap.com/pattern/intro-slideshow-evernote-hello"
    irb(main):005:0> post.image_url
    => "http://patterntap.com/sites/default/files/styles/pattern-full/public/newpatterns/50327f610371b.png"
    irb(main):006:0> post.date
    => 2012-08-20 11:18:08 -0700
