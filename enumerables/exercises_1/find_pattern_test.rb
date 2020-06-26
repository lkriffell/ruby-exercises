gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FindPatternTest < Minitest::Test

  def test_find_first_seven_letter_word
    words = ["capricious", "berry", "unicorn", "bag", "apple", "festering", "pretzel", "pencil"]
    found = nil
    words.each do |word|
      if word.length == 7
        found = word
        break
      end
    end
    assert_equal "unicorn", found
  end

  def test_no_waldo
    words = ["scarf", "sandcastle", "flag", "pretzel", "crow", "key"]
    found = nil
    words.each do |word|
      # Your code goes here
      if word == "waldo"
        found = word
        break
      end
    end
    assert_equal nil, found
  end

  def test_find_waldo
    words = ["noise", "dog", "fair", "house", "waldo", "bucket", "fish"]
    found = nil
    # Your code goes here
    words.each do |word|
      # Your code goes here
      if word == "waldo"
        found = word
        break
      end
    end
    assert_equal "waldo", found
  end

  def test_cannot_find_3_letter_words
    words = ["piglet", "porridge", "bear", "blueberry"]
    # Your code goes here
    found = nil
    words.each do |word|
      # Your code goes here
      if word.length == 3
        found = word
        break
      end
    end
    assert_equal nil, found
  end

  def test_find_13
    numbers = [2, 13, 19, 8, 3, 27]
    # Your code goes here
    found = nil
    numbers.each do |num|
      # Your code goes here
      if num == 13
        found = num
        break
      end
    end
    assert_equal 13, found
  end

  def test_find_first_even_number
    numbers = [3, 7, 13, 11, 10, 2, 17]
    # Your code goes here
    found = nil
    numbers.each do |num|
      # Your code goes here
      if num % 2 == 0
        found = num
        break
      end
    end
    assert_equal 10, found
  end

  def test_find_first_multiple_of_3
    skip
    numbers = [2, 8, 9, 27, 24, 5]
    # Your code goes here
    found = nil
    numbers.each do |num|
      # Your code goes here
      if num % 3 == 0
        found = num
        break
      end
    end
    assert_equal 9, found
  end

  def test_find_first_word_starting_with_q
    words = ["weirdo", "quill", "fast", "quaint", "quitter", "koala"]
    # Your code goes here
    found = nil
    words.each do |word|
      if word.split('').first == 'q'
        found = word
        break
      end
    end
    assert_equal "quill", found
  end

  def test_find_first_word_ending_with_er
    words = ["biggest", "pour", "blight", "finger", "pie", "border"]
    # Your code goes here
    found = nil
    words.each do |word|
      if word.split('').last(2) == ["e", "r"]
        found = word
        break
      end
    end
    assert_equal "finger", found
  end

  def test_find_first_number_greater_than_20
    skip
    numbers = [1, 8, 19, 21, 29, 31, 34]
    # Your code goes here
    numbers.each do |x|
      if x > 20
        found = x
      end
    end
    assert_equal 21, found
  end

end
