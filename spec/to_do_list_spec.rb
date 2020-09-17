require 'to_do_list'

describe '#to_do_list' do
  it "takes '' and returns 'please use the add or done keyword, followed by a to-do entry'" do
    expect(to_do_list("")).to eq "please use the add or done keyword, followed by a to-do entry"
  end
end
