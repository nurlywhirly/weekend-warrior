class Xmas
  attr_accessor :gifts, :verse, :first_verse, :sing
  def initialize
  end
  def self.gifts(day)
    @master_verse_a = ["and a partridge in a pear tree","two turtle doves","three french hens","four calling birds","FIVE GOLDEN RINGS","six geese-a-laying","seven swans-a-swimming","eight maids-a-milking","nine ladies dancing","ten lords-a-leaping","eleven pipers piping","twelve drummers drumming"]

    verse_a = []
    n = 0
    (day + 1).times do
      if day == 0
        verse_a << "a partridge in a pear tree"
      else
        verse_a << @master_verse_a[day - n]
        n += 1
      end
    end
    return verse_a
  end

  def self.verse(day_num)
    days_a = %w(first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth)
    return "On the #{ days_a[day_num].to_s } day of Christmas my true love gave to me\n#{gifts(day_num).join("\n")}"
  end

  def self.sing
    whole_song = []
    12.times do |i|
      whole_song << "#{ verse(i).strip }\n"
    end
    return whole_song.join("\n").strip
  end

end

# verse = Xmas.verse(11)#
# puts "#{verse}"
#
# song = Xmas.sing
# puts "#{song}"
