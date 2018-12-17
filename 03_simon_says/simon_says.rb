def echo(phrase)
    phrase
end

def shout(phrase)
    phrase.upcase
end

def repeat(phrase, times = 2)
    ([phrase] * times).join(" ")
end

def start_of_word(word, index)
    word[0...index]
end

def first_word(str)
    str = str.split(" ")
    str[0]
end

def titleize(str)
    words = str.split.map do |word|
        if %w(the and over).include?(word)
            word
        else
            word.capitalize
        end
    end
    words.first.capitalize!
    words.join(" ")
end