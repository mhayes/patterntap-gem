require "patterntap/version"
require "rss"
require "open-uri"

module PatternTap
  URL = "http://patterntap.com/rss/main-tap.xml"
  
  def self.recent
    begin
      rss = nil
      open(URL) do |feed|
        rss = RSS::Parser.parse(feed.read)
      end
    
      rss.items.map do |item|
        Item.new(item)
      end
    rescue Exception
      []
    end
  end
  
  class Item
    def initialize(item)
      @item = item
    end
    attr_reader :item
    
    def title
      item.title
    end
    
    def image_url
      # scrape screen url
      img = item.description.match(/img src\=\"([^"]*)\"/)
      if img
        img[1]
      end
    end
    
    def date
      item.pubDate
    end
    
    def url
      item.link
    end
  end
end
