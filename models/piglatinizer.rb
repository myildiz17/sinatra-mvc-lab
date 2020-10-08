

class PigLatinizer

    attr_accessor :text

    def initialize(text)
        @text = text.downcase
    end

    def platinize
        words = text.split(" ")
        
        arr = []
            words.each do |word|
            first_vowel = word.scan(/[aeoui]/).first
            ind = word.index(first_vowel)
            if ind==0
                arr<<word+"way"
            else
                arr<<word.slice(ind,10)+word.slice(0,ind)+"ay"
            end
            # binding.pry
        end
        arr
    end
end