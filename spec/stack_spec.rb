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

    it 'size returns 0' do
      size = stack.size
      expect(size).to eq 0
    end

    it 'has a max size value' do
      max_size = stack.instance_variable_get(:@max)
      expect(max_size).to be > 0
    end
  end


  let(:two_stack) { $two_stack = Stack.new ; $two_stack.push("bottom") ; $two_stack.push("top") }

  context 'when the stack is not empty' do
    it 'tells us the stack is not empty' do
      is_not_empty = two_stack.empty?
      expect(is_not_empty).to eq false
    end

    it 'returns the top element when using #peek' do
      peek = two_stack.peek
      expect(peek).to eq "top"
    end

    it 'peek does not remove top element' do
      peek = two_stack.peek
      expect(peek).to eq two_stack.peek
    end

    it 'returns the top element with #pop' do
      pop = two_stack.pop
      expect(pop).to eq "top"
    end

    it 'top element is removed with #pop' do
      pop = two_stack.pop
      expect(pop).to_not eq two_stack.pop
    end

    it 'size returns 2' do
      size = two_stack.size
      expect(size).to eq 2
    end
  end

  let(:full_stack) { $full_stack = Stack.new(3) ; $full_stack.push("bottom") ; $full_stack.push("top") }

  context 'when stack is full' do

    it 'returns message upon filling up the stack' do
      message = full_stack.push("draw")
      expect(message).to eq "Stack is full"
    end

    it 'running #push returns an error' do
      full_stack.push("draw")
      expect{full_stack.push("drawen")}.to raise_error(Stack::OverflowError)
    end
  end
end












