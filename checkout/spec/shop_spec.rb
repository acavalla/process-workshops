require 'shop'

describe Shop do
  subject { Shop.new }
  describe '#checkout' do
    it 'saves a string of basket contents' do
      subject.checkout('A')
      expect(subject.param[0]).to eq 'A'
    end

    it 'returns an integer corresponding to price' do
      expect(subject.checkout('A')).to eq 50
    end

    it 'prices B at 30' do
      expect(subject.checkout('B')).to eq 30
    end

    it 'can add two items' do
      expect(subject.checkout('AB')).to eq 80
      expect(subject.checkout('AA')).to eq 100
    end

    it 'can deal with A-D' do
      expect(subject.checkout('ABCD')).to eq 115
    end

    it 'can do special deals' do
      expect(subject.checkout('AAA')).to eq 130
      expect(subject.checkout('AAAAAA')).to eq 260
      expect(subject.checkout('AAAAABBBBBCD')).to eq 385
    end
  end

  describe 'edge cases' do
    it 'returns -1 if non capitals' do
      expect(subject.checkout('x')).to eq -1
    end

    it 'returns -1 if numbers' do
      expect(subject.checkout('1')).to eq -1
    end

    it 'returns -1 if mixture' do
      expect(subject.checkout('Ax')).to eq -1
      expect(subject.checkout('xA')).to eq -1
      expect(subject.checkout('-B8x')).to eq -1
    end
  end
end
