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
    chisel = Chisel.new("This is the first line of the paragraph.")
    chisel.body_format("This is the first line of the paragraph.")

    assert_equal "<p>This is the first line of the paragraph</p>", chisel.paragraph_convert
  end
end
