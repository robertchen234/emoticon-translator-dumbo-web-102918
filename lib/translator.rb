require 'yaml'
require 'pry'

def load_library(path)
  
# 'get_meaning' keys are the Japanese emoticons
#   'get_meaning' values are their meanings
# 'get_emoticon' keys are the English emoticons
#   'get_emoticon' values are their Japanese equivalents

  library = YAML.load_file(path)
  lib_hash = {"get_meaning" => {}, "get_emoticon" => {}}

  library.each do |meaning, emoticons|
    lib_hash["get_meaning"][emoticons[1]] = meaning
    lib_hash["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  
  lib_hash
  
end

def get_japanese_emoticon(path, emoticon)
  
# returns the Japanese equivalent of an English grinning emoticon, English happy emoticon, English sad emoticon,
#   else returns an apology message if the argument is not a known emoticon
  
  library = load_library(path)
  library["get_emoticon"].has_key?(emoticon) ? library["get_emoticon"][emoticon] : "Sorry, that emoticon was not found"
  
end

def get_english_meaning(path, emoticon)
  
# returns the English meaning of the Japanese emoticon (Ｔ▽Ｔ)
#   else returns an apology message if the argument is not a known emoticon
  
  library = load_library(path)
  library["get_meaning"].has_key?(emoticon) ? library["get_meaning"][emoticon] : "Sorry, that emoticon was not found"
  
end