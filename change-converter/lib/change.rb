class Change
  PENNY_DENOMS = [1, 2, 5, 10, 20, 50]
  POUND_DENOMS = [1, 2, 5, 10, 20, 50]
  def convert(amount)
    if !amount.is_a?Integer
      pounds = amount.to_s.split(".")[0].to_i
      result = []
      result_array = []
      POUND_DENOMS.reverse_each do |coin|
        if pounds >= coin
          (pounds/coin).times { result << coin }
          pounds -= (pounds/coin) * coin
        end
      end
        result.each do |result|
          result_array << "£" + result.to_s
        end
      return result_array
    else
      result = []
      result_array = []
      PENNY_DENOMS.reverse_each do |coin|
        if amount >= coin
          (amount/coin).times { result << coin }
          amount -= (amount/coin) * coin
        end
      end
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
