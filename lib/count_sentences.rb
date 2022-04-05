require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with? "!"

  end

  def count_sentences
    split_array = self.split(/[?.!]/)
    split_array.each do |sentence|
      if sentence.length == 0 then
        split_array.delete(sentence)
      end
    end
    split_array.length
    #puts split_array
  end
end

"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences