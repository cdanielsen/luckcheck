require 'rspec'
require '../lib/luckcheck.rb'

describe 'luckcheck' do
  it 'given a two digit string, returns true if the two digits are equal' do
    expect(luckcheck('11')).to eq true
	end
  
  it 'given a three digit string, returns true if the first and third digits are equal' do
    expect(luckcheck('121')).to eq true 
  end
  
  it 'given an even string of length "n", returns true if the sume of 1st..n/2 digits equals sum of the n/2+1..n digits' do
    expect(luckcheck('12344321')).to eq true
  end
  
  it 'given an odd string of length "n", returns true if the sum of 1st..(n-1)/2 digits equals sum of the (n+1)/2..n digits' do
    expect(luckcheck('123454321')).to eq true
  end
end