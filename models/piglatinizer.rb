class PigLatinizer

attr_accessor :words

  def initialize
    @words = words
  end


  def piglatinize(word)
    if word =~ (/\A[aeiou]/i)
      word = word + 'way'
    else
      vowel = (word =~ (/([aeiou].*)/))
      word =  (word[vowel..word.length] + word[0...vowel] + "ay")
    end
    word
  end

  def to_pig_latin(words)
    words = words.split(" ")

    words.collect do |word|
      piglatinize(word)
    end.join(" ")
  end

end
