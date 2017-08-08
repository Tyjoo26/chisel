require 'pry'

class Chisel

  attr_reader :input

  def initialize(input)
    @input = input
  end

  def split_content
    @input.split(" ")
  end

  def convert_hash_tags
    split_content.map do |hash_tag|
      hash_tag.include?("#")
        "<h1>#{split_content.join(" ")}</h1>"
      end
    end
  end

  # def convert_hash_tags
  #   split_content.map do |hash_tag|
  #     if hash_tag.include?("#")
  #       "<h1>#{split_content.join(" ")}</h1>"
  #     elsif hash_tag.include?("##")
  #       "<h2>"
  #     elsif hash_tag.include?("###")
  #       "<h3>"
  #     elsif hash_tag.include?("####")
  #       "<h4>"
  #     elsif hash_tag.include?("#####")
  #       "<h5>"
  #     elsif hash_tag.include?("*")
  #       "<em>"
  #
  #     end
  #   end
  # end
