require 'pry'

class Chisel

  attr_reader :input

  def initialize(text)
    @input = text.split("/n")
  end

  def format
    @input.map do |block|
      block = body_format(block)
      block = emphasis_formatting(block)
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

  def header_convert(block)
    hash_count = block.count("#")
    hash_string = hash_count.to_s
    "<h#{hash_string}>" + block.delete("#") + "</h#{hash_string}>"

  end

  def emphasis(block)
    if block.include?("**")
      strong_format(block)
    else block.include?("*")
      emphasize(block)
    # elsif block.include?("*") &&
    end
  end

  def strong_format(block)
    block.map do |word|
      if word.include?("**")
        word.gsub("**", "<strong>")
      else
        word
      end
    end
  end

  # def start_emphasize(block)
  #   block.map do |word|
  #     if word.include?("*")
  #       word.gsub("*", "<em>")
  #     else
  #       word
  #     end
  #   end
  # end

  def mid_emphasize(block)
    count = 0

  end

  def list_formatting

  end

  def unordered

  end

  def ordered

  end


end
