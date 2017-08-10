require 'pry'

class Chisel

  attr_reader :input

  def initialize(text)
    @input = text.split("/n")
  end

  def format
    @input.map do |block|
      block = body_format(block)
    end
  end

  def body_format(block)
    if block.start_with?("#")
      header_convert(block)
    else
      paragraph_convert(block)
    end
  end

  def paragraph_convert(block)
    "<p>" + block + "</p>"
  end

  def header_convert
    hash_count = block.count("#")

  end

  def emphasis_formatting

  end

  def strong_format

  end

  def emphasize

  end

  def list_formatting

  end

  def unordered

  end

  def ordered

  end


end
