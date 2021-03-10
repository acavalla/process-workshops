class Change
  attr_reader :result_array, :result
  DENOMS = [1, 2, 5, 10, 20, 50]
  def convert(amount)
    @result_array = []
      amount.to_s.split(".").each_with_index do |amount, index|
        if amount.to_i != 0
          break_down(amount.to_i)
          @result_array << @result
        else
          @result_array << []
        end
      end

      if result_array.length == 1
        @result_array.map { |array| array.map { |coin| coin.to_s + "p"} }[0]
      else
        @result_array[0].map { |note| "£" + note.to_s } + @result_array[1].map { |coin| coin.to_s + "p" }
      end
  end

  def break_down(amount)
    @result = []
    DENOMS.reverse_each do |coin|
      if amount >= coin
        (amount/coin).times { @result << coin }
        amount -= (amount/coin) * coin
      end
    end
  end
end
