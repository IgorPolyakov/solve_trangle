require 'rspec'
require 'quadrilateral'
RSpec.describe Quadrilateral do
  it 'Show first point' do
    qua = Quadrilateral.new
    qua.set_first_point([1.0, 1.0])
    expect(qua.p_zero).to eq [1.0, 1.0]
  end

  it 'Show second point' do
    qua = Quadrilateral.new
    qua.set_second_point([1.0, 1.0])
    expect(qua.p_one).to eq [1.0, 1.0]
  end

  it 'Get size line' do
    qua = Quadrilateral.new
    expect(qua.get_length_line([1.0, 1.0], [5.0, 1.0])).to eq 4.0
  end

  it 'Get half line' do
    qua = Quadrilateral.new
    qua.set_first_point([1.0, 1.0])
    qua.set_second_point([2.0, 2.0])
    expect(qua.get_half_point).to eq [1.5, 1.5]
  end

  it 'Get third point' do
    qua = Quadrilateral.new
    qua.set_first_point([1.0, 1.0])
    qua.set_second_point([3.0, 1.0])
    qua.deviation = 1.0
    expect(qua.get_third_point).to eq [2.0, 2.0]
  end
end