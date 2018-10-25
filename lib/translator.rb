# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  library = YAML.load_file(path)
  lib_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, emoticons|
    # the keys 'get_meaning' and 'get_emoticon' point to inner hashes
    # the keys inside the 'get_meaning' hash are the Japanese emoticons
    # the emoticon keys inside the 'get_meaning' hash point to their meanings
    # the keys inside the 'get_emoticon' hash are the English emoticons
    # the emoticon keys inside the 'get_emoticon' hash point to their Japanese equivalents
  end
  lib_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end