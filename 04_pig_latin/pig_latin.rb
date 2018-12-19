# def translate(str)
#     words = str.split(' ')
#     words = words.map do |word|
#         if word[0].chr == 'q' 
#             parts = ['qu', word.slice(2, word.length - 2)]
#         elsif word[1].chr == 'q'
#             parts = [word[word.index('q') - 1] + "qu", word.slice(3, word.length - 2)]
#         else 
#             parts = word.split(/([aeiou].*)/)     
#         end
#         parts[1] + parts[0] + "ay"
#     end
#     words.join(' ')
# end

def translate(str)
    regex = '\A([(?:qu)||[^aeiouAEIOU]]*)(.*)\z'
    str.split.each { |word|
        word.match regex
        word.replace "#{$2}#{$1}ay"
    } * ' '
end