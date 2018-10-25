# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  library = YAML.load_file(path)
  lib_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, emoticons|
    lib_hash["get_meaning"][emoticons[1]] = meaning
    lib_hash["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  lib_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end