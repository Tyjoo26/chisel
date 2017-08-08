require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'
require 'pry'


class ChiselTest < MiniTest::Test

  def test_does_it_exist?
    chisel = Chisel.new("# My Life in Desserts")

    assert_instance_of Chisel, chisel
  end

  def test_input_initialize?
    chisel = Chisel.new("# My Life in Desserts")

    assert_equal "# My Life in Desserts", chisel.input
  end

  def test_split_content
    chisel = Chisel.new("# My Life in Desserts")

    assert_equal ["#", "My", "Life", "in", "Desserts"], chisel.split_content
  end

  def test_convert_hash_tags
    chisel = Chisel.new("# My Life in Desserts
")

    assert_equal ["<h1> My Life in Desserts</h1>"],chisel.convert_hash_tags
  end
end
