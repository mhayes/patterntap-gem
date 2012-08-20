require "test/unit"
require "patterntap"

class PatternTapTest < Test::Unit::TestCase
  def test_constants
    assert_equal PatternTap::URL, "http://patterntap.com/rss/main-tap.xml"
  end
  
  def test_fetch_posts
    assert_equal 10, PatternTap.recent.count
  end
  
  def test_item_format
    recent = PatternTap.recent
    assert !recent.count.zero?
    item = recent.first
    assert item.respond_to?(:title)
    assert item.respond_to?(:image_url)
    assert item.respond_to?(:url)
    assert item.respond_to?(:date)
  end
end