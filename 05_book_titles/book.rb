class Book
    def title=(str)
        words = str.split
        new_title = ""
        keywords = ["a", "an", "and", "the", "in", "of"]
        words.map { |word|
            if keywords.include? word
                new_title << word
            else
                new_title << word.capitalize
            end
            new_title << " "
        }
        @title = new_title.strip
    end

    def title
        @title
    end
end