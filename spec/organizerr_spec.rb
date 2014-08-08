require 'rspec'
require 'cd_organizerr'

describe CD do
  it 'should be initialized with a hash that includes artist and album name' do
    test_cd = CD.new({:artist => "Randy Newman", :album => "Best Hits"})
    expect(test_cd).to be_an_instance_of CD
  end

  it 'should be able to create a new CD' do
  test_cd = CD.new({:artist => "Randy Newman", :album => "Best Hits"})
  expect(test_cd.artist).to eq "Randy Newman"
  expect(test_cd.album).to eq "Best Hits"
  end

  it 'add a cd to the collection' do
  test_cd = CD.new ({:artist => "Randy Newman", :album => "Best Hits"})
  test_cd.add_cd
  expect(CD.all).to eq [test_cd]
  end
end
