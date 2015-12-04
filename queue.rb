class Queue
  class UnderflowError < StandardError; end
  class OverflowError < StandardError; end

  def initialize(max = 5)
    @store = Array.new
    @max = max
  end

  def empty?
    store.empty?
  end

  def add(x)
    raise(OverflowError, "Stack is already full") if store.length == max
    store.push(x)
    return "Stack is full" if store.length == max
    # Don't expose the array
    # we're using for internal storage.
    return self
  end

  def take
    raise(UnderflowError, "There is no element to remove from the stack") if empty?
    store.shift
  end

  def peek
    store.first
  end

  private
  attr_reader :store
  attr_reader :max

end
