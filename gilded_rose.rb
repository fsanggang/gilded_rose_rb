class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      case item.name
      when "Backstage passes to a TAFKAL80ETC concert"
        update_quality_backstage(item)
      when "Aged Brie"
        update_quality_brie(item)
      when "Sulfuras, Hand of Ragnaros"
        update_quality_sulfuras(item)
      else
        puts "WAT"
      end
    end
  end

  def update_quality_backstage(item)
    item.sell_in = item.sell_in - 1

    return item.quality = 0 if item.quality >= 49

    item.quality = item.quality + 3 if (0...6).include?(item.sell_in)
    item.quality = item.quality + 2 if (6...10).include?(item.sell_in)
    item.quality = item.quality + 1 if item.sell_in >= 10
  end

  def update_quality_brie(item)
    item.sell_in = item.sell_in - 1

    item.quality = item.quality + 1 if item.sell_in <= 0 unless item.quality >= 50
    item.quality = item.quality + 1 unless item.quality >= 50
  end

  def update_quality_sulfuras(item)
  end
end

class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end