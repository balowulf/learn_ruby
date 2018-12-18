def translate(str)
    new_str = str.split(" ")
    vowels = ["a", "e", "i", "o", "u"]
    new_str.each do |word|
        if vowels.include? word[0]
            word << "ay"
        else
            # block below yields "errychay" from "cherry"
            ary = word.split("")
            newary = ary.shift(ary.index { |x| vowels.include? x })
            newary << "ay"
            ary << newary
            return ary.join("")
        end
    end
    new_str = new_str.join(" ")
end