require 'ten_minute_walk'

describe '#ten_minute_walk?' do
  it 'knows going one block in each direction is false' do
    expect(ten_minute_walk?(['n', 's', 'w', 'e'])).to be false
  end

  it 'knows going one block east is false' do
    expect(ten_minute_walk?(['e'])).to be false
  end

  it 'knows going one block north is false' do
    expect(ten_minute_walk?(['n'])).to be false
  end

  it 'cannot be too long' do
    expect(ten_minute_walk?(['n', 's', 'w', 'e', 'n', 's', 'w', 'e', 'n', 's', 'w', 'e'])).to be false
  end

  it 'cannot be too short' do
    expect(ten_minute_walk?(['n', 's'])).to be false
  end

  it 'can pick up true walks' do
    expect(ten_minute_walk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'])).to be true
  end
end
