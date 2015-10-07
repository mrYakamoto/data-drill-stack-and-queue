class Stack
  class UnderflowError < StandardError; end

  def initialize
    @store = Array.new
  end

  def push(x)
    store.push(x)

    # Don't expose the array
    # we're using for internal storage.
    return self
  end

  def pop
    raise(UnderflowError, "There is no element to remove from the stack") if empty?
    store.pop
  end

  def peek
    store.last
  end

  def empty?
    store.empty?
  end

  private
  attr_reader :store
end
