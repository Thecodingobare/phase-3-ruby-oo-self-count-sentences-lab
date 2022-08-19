require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
    
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    sentence_arr = self.split(/[.?!]/)
   #binding.pry
    sentence_arr.delete_if {|word| word==""}
    sentence_arr.count
  end
end