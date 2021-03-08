class MiddleLetter
  def middle_letter(word)
    middle = word.length/2
    if word.length.odd?
      word[middle]
    else
      word[middle-1..middle]
    end
  end
end
