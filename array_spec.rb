require './array'

describe Array, "#to_s" do
  let(:element_no_to_s_array) {  
    o = Object.new
    class << o; undef to_s; end
    [o]
  }
  let(:empty_array) { [] }
  let(:one_element_array) { [1] }
  let(:many_elements_array) { [1, 2, 3] }

  it 'raise an NoMethodError if to_s not defined' do
    expect { element_no_to_s_array.to_s }.to raise_error(NoMethodError)
  end

  it 'returns "[]", when array is empty' do
    empty_array.to_s.should be == "[]"
  end

  it 'returns element in braces with no comma, when array has 1 element' do
    one_element_array.to_s.should be == "[1]" 
  end

  it 'returns comma separeted elements in braces, when array has more then 1 element' do
    many_elements_array.to_s.should be == "[1, 2, 3]"
  end  

end
