require_relative '../stack'

describe Stack do

  context 'new instance needed' do
    it 'creates a new instance' do
      new_stack = Stack.new
      expect(new_stack.class).to eq Stack
    end
  end

  let (:stack) {Stack.new}
  context 'when the stack empty' do
    it 'tells us the stack is empty' do
      is_empty = stack.empty?
      expect(is_empty).to eq true
    end

    it 'tells us the there is no top element' do
      no_peek = stack.peek
      expect(no_peek).to eq nil
    end

    it 'raises an error when we try to pop an element' do
     expect{stack.pop}.to raise_error(Stack::UnderflowError)
   end
 end

 let(:full_stack) { $full_stack = Stack.new ; $full_stack.push("bottom") ; $full_stack.push("top") }

 context 'when the stack is not empty' do
  it 'tells us the stack is not empty' do
    is_not_empty = full_stack.empty?
    expect(is_not_empty).to eq false
  end

  it 'returns the top element when using #peek' do
    peek = full_stack.peek
    expect(peek).to eq "top"
  end

  it 'peek does not remove top element' do
    peek = full_stack.peek
    expect(peek).to eq full_stack.peek
  end

  it 'returns the top element with #pop' do
    pop = full_stack.pop
    expect(pop).to eq "top"
  end

  it 'top element is removed with #pop' do
    pop = full_stack.pop
    expect(pop).to_not eq full_stack.pop
  end
 end
end












