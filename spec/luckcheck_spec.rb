require rspec

describe 'luckcheck' do
	it('takes a string of numbers and returns an array of those numbers') do
		expect(luckcheck('123')).to eq([1,2,3])
	end
end