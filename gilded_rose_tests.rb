require File.join(File.dirname(__FILE__), "gilded_rose")
require "minitest/autorun"

class GildedRoseTest < Minitest::Test

  def test_backstage_sell_in_minus_one
    items = [Item.new("Backstage passes to a TAFKAL80ETC concert", -1, 0)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, -2
    assert_equal items[0].quality, 0
  end

  def test_backstage_sell_in_five
    items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 5, 0)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, 4
    assert_equal items[0].quality, 3
  end

  def test_backstage_sell_in_ten
    items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 10, 0)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, 9
    assert_equal items[0].quality, 2
  end

  def test_backstage_sell_in_eleven
    items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 11, 0)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, 10
    assert_equal items[0].quality, 1
  end

  def test_backstage_quality_zero
    items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 0, 0)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, -1
    assert_equal items[0].quality, 0
  end

  def test_backstage_quality_forty_nine
    items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 0, 49)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, -1
    assert_equal items[0].quality, 0
  end

  def test_backstage_quality_fifty
    items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 0, 50)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, -1
    assert_equal items[0].quality, 0
  end



  def test_brie_sell_in_minus_one
    items = [Item.new("Aged Brie", -1, 0)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, -2
    assert_equal items[0].quality, 2
  end

  def test_brie_sell_in_five
    items = [Item.new("Aged Brie", 5, 0)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, 4
    assert_equal items[0].quality, 1
  end

  def test_brie_sell_in_ten
    items = [Item.new("Aged Brie", 10, 0)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, 9
    assert_equal items[0].quality, 1
  end

  def test_brie_sell_in_eleven
    items = [Item.new("Aged Brie", 11, 0)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, 10
    assert_equal items[0].quality, 1
  end

  def test_brie_quality_zero
    items = [Item.new("Aged Brie", 0, 0)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, -1
    assert_equal items[0].quality, 2
  end

  def test_brie_quality_forty_nine
    items = [Item.new("Aged Brie", 0, 49)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, -1
    assert_equal items[0].quality, 50
  end

  def test_brie_quality_fifty
    items = [Item.new("Aged Brie", 0, 50)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, -1
    assert_equal items[0].quality, 50
  end



  def test_sulfuras_sell_in_minus_one
    items = [Item.new("Sulfuras, Hand of Ragnaros", -1, 0)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, -1
    assert_equal items[0].quality, 0
  end

  def test_sulfuras_sell_in_five
    items = [Item.new("Sulfuras, Hand of Ragnaros", 5, 0)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, 5
    assert_equal items[0].quality, 0
  end

  def test_sulfuras_sell_in_ten
    items = [Item.new("Sulfuras, Hand of Ragnaros", 10, 0)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, 10
    assert_equal items[0].quality, 0
  end

  def test_sulfuras_sell_in_eleven
    items = [Item.new("Sulfuras, Hand of Ragnaros", 11, 0)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, 11
    assert_equal items[0].quality, 0
  end

  def test_sulfuras_quality_zero
    items = [Item.new("Sulfuras, Hand of Ragnaros", 0, 0)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, 0
    assert_equal items[0].quality, 0
  end

  def test_sulfuras_quality_forty_nine
    items = [Item.new("Sulfuras, Hand of Ragnaros", 0, 49)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, 0
    assert_equal items[0].quality, 49
  end

  def test_sulfuras_quality_fifty
    items = [Item.new("Sulfuras, Hand of Ragnaros", 0, 50)]
    GildedRose.new(items).update_quality()

    assert_equal items[0].sell_in, 0
    assert_equal items[0].quality, 50
  end

end