class Change
  attr_reader :result
  DENOMS = [1, 2, 5, 10, 20, 50]
  def convert(amount)
    result_array = []
    if !amount.is_a?Integer
      pounds = amount.to_s.split(".")[0].to_i
      break_down(pounds)
      @result.each do |result|
        result_array << "£" + result.to_s
      end
      return result_array
    else
      break_down(amount)
      @result.map |coin| { coin.to_s + "p" }

      return result
    end
  end

  def break_down(amount)
    @result = []
    DENOMS.reverse_each do |coin|
      if amount >= coin
        (amount/coin).times { result << coin }
        amount -= (amount/coin) * coin
      end
    end
  end
end

# pound_denoms.reverse_each do |pound|
# => if amount > pound
        # result_array < amount/pound
