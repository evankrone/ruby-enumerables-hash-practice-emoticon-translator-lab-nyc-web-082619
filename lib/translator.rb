# require modules here

def load_library(file)
require 'yaml'
emots = YAML.load(File.read(file))
emot_hash = {
  'get_emoticon' => {},
  'get_meaning' => {}
}
  emots.each do |key, value|
  emot_hash['get_emoticon'][value[0]] = emots[key][1]
  emot_hash['get_meaning'][value] = key
   end
p emot_hash
end

def get_japanese_emoticon
  
end

def get_english_meaning
  # code goes here
end