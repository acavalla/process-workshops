require './lib/middle_letter'

describe MiddleLetter do
  x = MiddleLetter.new
  it 'gets the middle letter of one-letter' do
    expect(x.middle_letter("A")).to eq("A")
  end

  it 'gets the middle letter of three-letter' do
    expect(x.middle_letter("the")).to eq("h")
  end

  it 'gets the middle letter of two-letter' do
    expect(x.middle_letter("of")).to eq("of")
  end

  it 'gets the middle letter of four-letter' do
    expect(x.middle_letter("test")).to eq("es")
  end

end
