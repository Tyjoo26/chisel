require 'pry'

class Chisel

  attr_reader :input

  def initialize(input)
    @input = input
  end

  def split_content
    @input.split(" ")
  end

  def convert_one_hash_tag
    split_content.map do |hash_tag|
      if hash_tag.include?("#")
        "<h1>#{split_content.join(" ").delete("#")}</h1>"
      elsif hash_tag.include?("")

      end
    end
  end

end
