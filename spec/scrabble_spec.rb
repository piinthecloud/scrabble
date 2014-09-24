require "./scrabble.rb"

describe Scrabble do


  it "returns an array of the word" do
     expect(Scrabble.word_array("jazz")).to eq ["j", "a", "z", "z"]
  end

  it "returns array of symbols" do
    expect(Scrabble.symbol_array("Jazz")).to eq  [:j, :a, :z, :z]
  end

  it "returns array of symbols" do
    expect(Scrabble.value_array("jazz")).to eq [8, 1, 10, 10]
  end


  it "Returns value of jazz" do
    expect(Scrabble.score("jazz")).to eq 29
  end

  it "Returns most valuable word" do
    expect(Scrabble.highest_score_from(["the", "jazz", "train"])).to eq "jazz"
  end

  it "Returns array with words of the same value" do
    expect(Scrabble.highest_score_from(["a", "lun", "do"])).to eq "do"
  end

end
#
# it "returns an array of value for an array of words" do
#   expect(Scrabble.number_array(["jazz", "the", "train"])).to eq [29, 6, 5]
# end
# #
# it "returns a hash comprised of number_array result and array_of_word" do
#   expect(Scrabble.zipped_array(["jazz", "the", "train"])).to eq({"jazz"=>29, "the"=>6, "train"=>5})
# end
#
# it "Returns array with words of the same value" do
#   expect(Scrabble.matching_values(["to", "un", "train"])).to eq ["to", "un"]
# end
