class Change
  attr_reader :result_array, :result
  DENOMS = [1, 2, 5, 10, 20, 50]
  def convert(amount)
    @result_array = []
    calculate_coins_notes(amount)
    format_convert
  end

  private

  def break_down(amount)
    @result = []
    DENOMS.reverse_each do |coin|
      if amount >= coin
        (amount/coin).times { result << coin }
        amount -= (amount/coin) * coin
      end
    end
  end

  def penny_stringify(penny_array)
    penny_array.map { |coin| coin.to_s + "p" }
  end

  def pound_stringify
    result_array[0].map { |note| "£" + note.to_s }
  end

  def format_convert
    if result_array.length == 1
      result_array.map { |array| penny_stringify(array) }[0]
    else
      pound_stringify + penny_stringify(result_array[1])
    end
  end

  def calculate_coins_notes(amount)
    amount.to_s.split(".").each_with_index do |amount, index|
      if amount.to_i != 0
        break_down(amount.to_i)
        result_array << result
      else
        result_array << []
      end
    end
  end
end
