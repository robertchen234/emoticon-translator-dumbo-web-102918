# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  
  library = YAML.load_file(path)
  lib_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  
# 'get_meaning' keys are the Japanese emoticons
#   'get_meaning' values are their meanings
# 'get_emoticon' keys are the English emoticons
#   'get_emoticon' values are their Japanese equivalents

  library.each do |meaning, emoticons|
    lib_hash["get_meaning"][emoticons[1]] = meaning
    lib_hash["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  
  lib_hash
  
end

def get_japanese_emoticon(path, emoticon)
  library = load_library(path)
  library["get_emoticon"].has_key?(emoticon) ? library["get_emoticon"][emoticon] : "Sorry, that emoticon was not found"
end

def get_english_meaning
  # code goes here
end