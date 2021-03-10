require 'change'

describe Change do
  describe '#convert' do
    it 'can convert 5p' do
      expect(subject.convert(5)).to eq ["5p"]
    end

    it 'can convert 10p' do
      expect(subject.convert(10)).to eq ["10p"]
    end

    it 'can convert £5' do
      expect(subject.convert(5.00)).to eq ["£5"]
    end

    it 'can convert 6p' do
      expect(subject.convert(6)).to eq ["5p", "1p"]
    end
  end
end
