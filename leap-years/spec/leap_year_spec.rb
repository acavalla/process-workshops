require './lib/leap_year.rb'

describe "leapyear" do
  it 'should know 400 is a leap year' do
    expect(leap_year?(400)).to eq true
  end

  it 'should know 401 is not a leap year' do
    expect(leap_year?(401)).to eq false
  end

  it 'should know 1700 is not a leap year' do
    expect(leap_year?(1700)).to eq false
  end

  it 'should know 2004 is a leap year' do
    expect(leap_year?(2004)).to eq true
  end

  it 'should know 2009 is not a leap year' do
    expect(leap_year?(2009)).to eq false
  end
end
