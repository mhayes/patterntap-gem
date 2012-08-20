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
