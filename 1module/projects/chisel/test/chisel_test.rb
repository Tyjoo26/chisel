require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'
require 'pry'


class HeaderTest < MiniTest::Test

  def test_does_it_exist?
    chisel = Chisel.new("# My Life in Desserts")

    assert_instance_of Chisel, chisel
  end

  def test_split_content
    chisel = Chisel.new("# My Life in Desserts")

    assert_equal ["# My Life in Desserts"], chisel.input
  end

  def test_does_it_split_two_lines?
    chisel = Chisel.new("# My Life in Desserts./nChapter 1: The Beginning.")

    assert_equal ["# My Life in Desserts.", "Chapter 1: The Beginning."], chisel.input
  end

  def test_paragraph_convert
    chisel   = Chisel.new("This is the first line of the paragraph.")

    expected = "<p>This is the first line of the paragraph</p>"
	  block    = "This is the first line of the paragraph"
    assert_equal expected, chisel.paragraph_convert(block)
  end

  def test_header_convert_two
    chisel   = Chisel.new("## Chapter 1: The Beginning")

    expected = "<h2> Chapter 1: The Beginning</h2>"
    block    = "## Chapter 1: The Beginning"

    assert_equal expected, chisel.header_convert(block)
  end

  def test_header_convert_three
    chisel   = Chisel.new("## Chapter 1: The Beginning")

    expected = "<h3> Chapter 1: The Beginning</h3>"
    block    = "### Chapter 1: The Beginning"

    assert_equal expected, chisel.header_convert(block)
  end

  def test_strong_format
    chisel   = Chisel.new("My emphasized and **stronged** text is awesome.")

    expected = "<p>My <em>emphasized and **stronged** text</em> is awesome.</p>"
    block = "My emphasized and **stronged** text is awesome."

    assert_equal expected, chisel.emphasis(block)
  end

end
