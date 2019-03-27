require "yaml"
require "pry"
emotes = YAML.load_file('/home/fortunate-checkpoint-8501/emoticon-translator-chicago-web-career-040119/lib/emoticons.yml')
#binding.pry
def load_library(path)
  YAML.load_file("#{path}")
end

def get_japanese_emoticon(path, emote)
  hash = load_library(path)
  binding.pry
  if hash["get_emoticon"].has_key?(emote) == true
    return hash["get_emoticon"][emote]
  else
    return "Sorry, that emoticon was not found"
  end

end
get_japanese_emoticon('/home/fortunate-checkpoint-8501/emoticon-translator-chicago-web-career-040119/lib/emoticons.yml', ">:(")

def get_english_meaning(path, emote)
  hash = load_library(path)
  if hash["meaning"][emote] == nil
    return "Sorry, that emoticon was not found"
  end
  hash["get_meaning"][emote]
end
get_japanese_emoticon('/home/fortunate-checkpoint-8501/emoticon-translator-chicago-web-career-040119/lib/emoticons.yml', "☜(⌒▽⌒)☞")
