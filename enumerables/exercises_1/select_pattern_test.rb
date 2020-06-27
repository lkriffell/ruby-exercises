gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class SelectPatternTest < Minitest::Test

  def test_pick_even_numbers
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    evens = []
    numbers.each do |number|
      evens << number if number.even?
    end
    assert_equal [2, 4, 6, 8, 10], evens
  end

  def test_pick_odd_numbers
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    odds = []
    numbers.each do |number|
      # Your code goes here
      odds << number if number.odd?
    end
    assert_equal [1, 3, 5, 7, 9], odds
  end

  def test_pick_words_with_three_letters
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    selected = []
    # Your code goes here
    words.each do |word|
      if word.length == 3
        selected << word
      end
    end
    assert_equal ["bad", "cat", "dog", "red"], selected
  end

  def test_pick_words_with_more_than_three_letters
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    selected = []
    # Your code goes here
    words.each do |word|
      if word.length > 3
        selected << word
      end
    end
    assert_equal ["pill", "finger", "blue", "table"], selected
  end

  def test_pick_words_ending_in_e
    words = ["are", "you", "strike", "thinking", "belt", "piece", "warble", "sing", "pipe"]
    # Your code goes here
    selected = []
    words.each do |word|
      word = word.split('')
      if word.last == "e"
        selected << word.join
      end
    end
    assert_equal ["are", "strike", "piece", "warble", "pipe"], selected
  end

  def test_pick_words_ending_in_ing
    words = ["bring", "finger", "drought", "singing", "bingo", "purposeful"]
    # Your code goes here
    selected = []
    words.each do |word|
      word = word.split('')
      if word.last(3) == ["i", "n", "g"]
        selected << word.join
      end
    end
    assert_equal ["bring", "singing"], selected
  end

  def test_pick_words_containing_e
    words = ["four", "red", "five", "blue", "pizza", "purple"]
    # Your code goes here
    selected = []
    words.each do |word|
      word = word.split('')
      word.each do |char|
        if char == "e"
          selected << word.join
        end
      end
    end
    assert_equal ["red", "five", "blue", "purple"], selected
  end

  def test_pick_dinosaurs
    animals = ["tyrannosaurus", "narwhal", "eel", "achillesaurus", "qingxiusaurus"]
    # Your code goes here
    dinosaurs = []
    animals.each do |animal|
      if animal.include? "saurus"
        dinosaurs << animal
      end
    end
    assert_equal ["tyrannosaurus", "achillesaurus", "qingxiusaurus"], dinosaurs
  end

  def test_pick_floats
    numbers = [3, 1.4, 3.5, 2, 4.9, 9.1, 8.0]
    # Your code goes here
    floats = []
    numbers.each do |num|
      if num.to_s.include? "."
        floats << num.to_f
      end
    end
    assert_equal [1.4, 3.5, 4.9, 9.1, 8.0], floats
  end

  def test_pick_arrays
    elements = ["CAT", ["dog"], 23, [56, 3, 8], "AIMLESS", 43, "butter"]
    # Your code goes here
    arrays = []
    elements.each do |elem|
      if elem.kind_of?(Array) == true
        arrays << elem
      end
    end
    assert_equal [["dog"], [56, 3, 8]], arrays
  end

  def test_pick_hashes
    elements = ["cat", {:dog=>"fido"}, 23, {:stuff=>"things"}, "aimless", 43]
    # Your code goes here
    hashes = []
    elements.each do |elem|
      if elem.kind_of?(Hash) == true
        hashes << elem
      end
    end
    assert_equal [{:dog=>"fido"}, {:stuff=>"things"}], hashes
  end

end
