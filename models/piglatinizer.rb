class PigLatinizer

  def piglatinize(word)

    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u"]

    if non_pig_latin_words.include?(word.downcase) ||  word.downcase.start_with?('a','e','i','o','u')
      word << "way"
    elsif vowels.include? word[0]
      word << "ay"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + 'ay'
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end

# p = PigLatinizer.new


  # def piglatinize(word)
  #    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
  #   if non_pig_latin_words.include?(word.downcase)
  #     word
  #   else
  #     array = word.split(" ")
  #     ending = "ay"
  #     alt_ending = "way"
  #     new_string = []
  #     array.each do |word|
  #       arr = word.split("")
  #       if word.start_with?('a','e','i','o','u')
  #         new_string << new_word = word << alt_ending
  #       elsif !arr[0].match(/a|e|i|o|u/) && !arr[1].match(/a|e|i|o|u/)
  #         new_string << new_word = arr.push(arr.shift(2)).join << ending
  #       else
  #         new_string << new_word = arr.push(arr.shift).join << ending
  #       end
  #     end
  #   end
  #   new_string.join(" ")
  # end
