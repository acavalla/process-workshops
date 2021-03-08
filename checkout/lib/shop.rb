class Shop
  attr_reader :param
  PRICES = {"A" => 50,
             "B" => 30,
             "C" => 20,
             "D" => 15}
  NUMBERS = {"A" => 3,
             "B" => 2}
  DEALS = {"A" => 130,
            "B" => 45}

  def initialize
    @param = []
  end

  def checkout(contents)
    @return = 0
    @param[0] = contents
    return -1 if quality_control?
    calculate_basket
    return @return
  end

  private

  def quality_control?
    !!(@param[0] =~ /[^ABCD]/)
  end

  def calculate_basket
    "ABCD".chars.each do |char|
      if on_offer?(char)
        calculate_discounts(char)
      else
        calculate(char)
      end
    end
  end

  def on_offer?(char)
    NUMBERS.key?(char) && NUMBERS[char] <= @param[0].count(char)
  end

  def calculate_discounts(char)
    @return += (@param[0].count(char)/NUMBERS[char]) * DEALS[char]
    @return += PRICES[char] * (@param[0].count(char) % NUMBERS[char])
  end

  def calculate(char)
    @return += PRICES[char] * @param[0].count(char)
  end
end
