# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  library = YAML.load_file(path)
  lib_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, emoticons|
    
  end
  lib_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end