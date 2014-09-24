class Scrabble

    HASH = {:a => 1, :e => 1,
            :i => 1, :o => 1,
            :u => 1, :l => 1,
            :n => 1, :r => 1,
            :s => 1, :t => 1,
            :d => 2, :g => 2,
            :b => 3, :c => 3,
            :m => 3, :p => 3,
            :v => 4, :h => 4,
            :w => 4, :y => 4,
            :f => 4, :k => 5,
            :j => 8, :x => 8,
            :q => 10,:z => 10}

#turns word into an array of characters
  def self.word_array(word)
    word.split(//)
  end

#returns array of symbols
  def self.symbol_array(word)
    array = []
    word_array(word).each {|letter| array << letter.downcase.to_sym}
    return array
  end

#returns an array of numbers
  def self.value_array(word)
    num_array = []
    symbol_array(word).each { |symbol| num_array << HASH[symbol]}
    return num_array
  end

#returns value of the word
  def self.score(word)
    totalscore = 0
    value_array(word).each { |num| totalscore += num }
    return totalscore
  end

  def self.highest_score_from(aow)
    highest_word = ""
    highest_score = 0
    aow.each do |word|
      if score(word) > highest_score
        highest_score = score(word)
        highest_word = word
      end
      # if score(word) == highest_score && word.length > highest_word.length
      #   highest_score = score(word)
      #   highest_word = word
      # end
      #end
      #if word(score) == highest_score && word.length > highest_word.length
    end
    return highest_word
  end
end

#
# def self.highest_score_from(aow)
#   highest_word = ""
#   highest_score = 0
#   aow.each do |word|
#     if score(word) > highest_score
#       highest_score = score(word)
#       highest_word = word
#     end
#     # if score(word) == highest_score && word.length > highest_word.length
#     #   highest_score = score(word)
#     #   highest_word = word
#     # end
#     #end
#     #if word(score) == highest_score && word.length > highest_word.length
#   end
#   return highest_word
# end
#
# #turns array of words into an array of scores
#   def self.number_array(aow)
#     num_array = []
#     aow.each {|word| num_array << score(word)}
#     return num_array
#   end
#
# #creates hash out array of words and array of scores
#   def self.zipped_array(aow)
#     Hash[aow.zip(number_array(aow))]
#   end
#
#   def wordlengths(aow)
#     aow.each {|word| word.length }
#
#   end
# value_array = []
# aow.each do |word|
#   value_array << score(word)
# end
# zipped_array(aow).each { |k, v| return k if v == zipped_array(aow).values.max }
#   def self.matching_values(aow)
#     zipped_array(aow).each {|k, v| return k if v == v}
#   end
