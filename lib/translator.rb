# require modules here

def load_library(file_path)
require 'yaml'
emots = YAML.load(File.read(file_path))
emot_hash = {'get_meaning' => {}, 'get_emoticon' => {}}
  emots.map do |key, value|
  english_emoticon = value[0]
  japanese_emoticon = value[1]
  emot_hash['get_meaning'][japanese_emoticon] = key
  emot_hash['get_emoticon'][english_emoticon] = [japanese_emoticon]
  
   end
p emot_hash
end

def get_japanese_emoticon(file_path,emot)
  emot_hash = load_library(file_path)
  emot_hash['get_emoticon'].fetch(emot, "Sorry, that emoticon was not found") 
end

def get_english_meaning(file_path, emot)
 emot_hash = load_library(file_path)
  emot_hash['get_meaning'].fetch(emot, "Sorry, that emoticon was not found") 
end