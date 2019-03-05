class Scrabble
  def initialize
    @scores = {
      1 => ['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'],
      2 => ['d', 'g'],
      3 => ['b', 'c', 'm', 'p'],
      4 => ['f', 'h', 'v', 'w', 'y'],
      5 => ['k'],
      8 => ['j', 'x'],
      10 => ['q', 'z'],
    }
  end
  def score(word)
    scores =[]
    letters = word.split('')
    @scores.each do |score, letter|
      letter.each do |letter|
        letters.each do |input_letter|
           if letter == input_letter
             scores << score
           end
         end
       end
     end
      return scores.reduce(:+)
  end
end
