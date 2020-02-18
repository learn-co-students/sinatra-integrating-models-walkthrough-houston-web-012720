# Your TextAnalyzer model code will go here.
class TextAnalyzer
    attr_accessor :text
   
    def initialize(text)
      @text = text.downcase
    end
   
    def count_of_words
      words = text.split(" ")
      words.count
    end
   
    def count_of_vowels
      text.scan(/[aeoui]/).count
    end
   
    def count_of_consonants
      text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
    end

    def most_used_letter
        s1 = text.upcase.gsub(/[\s]/, '').split("") # take out all the white space
        hash = Hash.new(0)
        s1.each{|word| hash[word] += 1}
        hash.sort_by{|k,v| v}.last
    end
end