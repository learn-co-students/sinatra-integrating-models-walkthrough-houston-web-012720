require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]
    my_text = TextAnalyzer.new(text_from_user)
    @number_of_words = my_text.count_of_words
    @number_of_vowels = my_text.count_of_vowels
    @number_of_consonants = my_text.count_of_consonants
    @most_used_letter = my_text.most_used_letter[0]
    @times = my_text.most_used_letter[1]
    erb :results
  end
end
