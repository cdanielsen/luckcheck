require 'rspec'
require '../lib/luckcheck.rb'

describe 'luckcheck' do
  it('given a two digit string, returns true if the two digits are equal') do
    expect(luckcheck('11')).to eq(true)
	end
end