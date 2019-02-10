# frozen_string_literal: true

# 99 problems exercise
class Bottles

  def song
    verses(99, 0)
  end

  def verses(start_verse, end_verse)
    result = []
    current_verse = start_verse

    while current_verse >= end_verse
      result << verse(current_verse)
      current_verse -= 1
    end
    result.join("\n")
  end

  def verse(verse_number)
    case verse_number
    when 0
      zero_bottle_verse
    when 1
      one_bottle_verse
    when 2
      two_bottle_verse
    else
      default_verse(verse_number)
    end
  end

  private

  def default_verse(verse_number)
    [
      "#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.",
      "Take one down and pass it around, #{verse_number-1} bottles of beer on the wall."
    ]
    .map { |verse| "#{verse}\n" }
    .join
  end

  def two_bottle_verse
    [
      "2 bottles of beer on the wall, 2 bottles of beer.",
      "Take one down and pass it around, 1 bottle of beer on the wall."
    ]
    .map { |verse| "#{verse}\n" }
    .join
  end

  def one_bottle_verse
    [
      "1 bottle of beer on the wall, 1 bottle of beer.",
      "Take it down and pass it around, no more bottles of beer on the wall."
    ]
    .map { |verse| "#{verse}\n" }
    .join
  end

  def zero_bottle_verse
    [
      "No more bottles of beer on the wall, no more bottles of beer.",
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    ]
    .map { |verse| "#{verse}\n" }
    .join
  end
end
