require 'change'

describe Change do
  describe '#convert' do
    context 'pennies' do
      it 'can convert 5p' do
        expect(subject.convert(5)).to eq ["5p"]
      end

      it 'can convert 10p' do
        expect(subject.convert(10)).to eq ["10p"]
      end

      it 'can convert 6p' do
        expect(subject.convert(6)).to eq ["5p", "1p"]
      end

      it 'can convert 99p' do
        expect(subject.convert(99)).to eq ["50p", "20p", "20p", "5p", "2p","2p"]
      end

      context 'pounds' do
        it 'can convert £5' do
          expect(subject.convert(5.00)).to eq ["£5"]
        end

        it 'can convert £99' do
          expect(subject.convert(99.00)).to eq ["£50", "£20","£20","£5","£2","£2"]
        end
      end

      context 'pounds and pennies' do
        it 'can convert £1.01' do
          expect(subject.convert(1.01)).to eq ["£1", "1p"]
        end
      end
    end
  end
end
