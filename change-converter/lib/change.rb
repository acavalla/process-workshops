class Change
  PENNY_DENOMS = [1, 2, 5, 10, 20, 50]
  POUND_DENOMS = [1, 2, 5, 10, 20, 50]
  def convert(amount)
    if !amount.is_a?Integer
      result_array = []
      result = amount.to_s.split(".")[0]
      result_array << "£" + result
    else
      result = []
      result_array = []
      PENNY_DENOMS.reverse_each do |coin|
        if amount >= coin
          (amount/coin).times { result << coin }
          amount -= (amount/coin) * coin
        end
      end
      puts result
      result.each do |coin|
        result_array << coin.to_s + "p"
      end
      return result_array
    end
  end
end

# pound_denoms.reverse_each do |pound|
# => if amount > pound
        # result_array < amount/pound
