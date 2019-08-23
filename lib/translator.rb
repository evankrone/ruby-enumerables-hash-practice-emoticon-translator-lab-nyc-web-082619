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
  emot_translator = load_library(file_path)
  emot_translator['get_emoticon']
end

def get_english_meaning
  # code goes here
end