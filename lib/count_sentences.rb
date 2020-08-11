require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    split = self.split(/[.?!]/)
    if split.count > 0
      split.reject { |word| word == ""}.count
    else
      0
    end
  end
end