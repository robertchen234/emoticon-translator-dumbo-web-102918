# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  library = YAML.load_file(path)
  lib_hash = {"get_meaning" => {}, "get_emoticon" => {}}
   library.each do |meaning, emoticons|
    sorted_library["get_meaning"][emoticons[1]] = meaning
    sorted_library["get_emoticon"][emoticons[0]] = emoticons[1]
  end
   sorted_library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end