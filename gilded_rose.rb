class GildedRose

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      case item.name
      when "Backstage passes to a TAFKAL80ETC concert"
        Backstage.new(item).update
      when "Aged Brie"
        Brie.new(item).update
      when "Sulfuras, Hand of Ragnaros"
        return
      else
        puts "WAT"
      end
    end
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

class Backstage

  attr_accessor :item

  def initialize(item)
    @item = item
  end

  def update
    update_sell_in
    update_quality
  end

  def update_sell_in
    item.sell_in = item.sell_in - 1
  end

  def update_quality
    return item.quality = 0 if item.quality >= 49

    item.quality = item.quality + 3 if (0...6).include?(item.sell_in)
    item.quality = item.quality + 2 if (6...10).include?(item.sell_in)
    item.quality = item.quality + 1 if item.sell_in >= 10
  end

end

class Brie

  attr_accessor :item

  def initialize(item)
    @item = item
  end

  def update
    update_sell_in
    update_quality
  end

  def update_sell_in
    item.sell_in = item.sell_in - 1
  end

  def update_quality
    item.quality = item.quality + 1 if item.sell_in <= 0 unless item.quality >= 50
    item.quality = item.quality + 1 unless item.quality >= 50
  end

end
