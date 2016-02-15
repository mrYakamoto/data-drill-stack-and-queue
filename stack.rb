class Stack
  class UnderflowError < StandardError; end
  class OverflowError < StandardError; end

  def initialize(max = 5)
    @store = Array.new
    @max = max
  end

  def size
    store.size
  end
  # Add an element
  # to the top of the stack.
  def push(x)
    raise(OverflowError, "Stack is already full") if store.length == max
    store.push(x)
    return "Stack is full" if store.length == max
    # Don't expose the array
    # we're using for internal storage.
    return self
  end

  # Remove an element
  # from the stack.
  def pop
    raise(UnderflowError, "There is no element to remove from the stack") if empty?
    store.pop
  end

  # Show the element on the top of the stack,
  # but don't remove it.
  def peek
    store.last
  end

  # Report whether or not ther are
  # any elements in the stack.
  def empty?
    store.empty?
  end

  private
  attr_reader :store
  attr_reader :max

end

p new_stack = Stack.new
# p new_stack.pop
p new_stack.peek
p new_stack.empty?
p new_stack.push("dog")
