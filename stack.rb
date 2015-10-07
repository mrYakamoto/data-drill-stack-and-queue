class Stack
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
    store.pop
  end

  def top
    store.last
  end

  def empty?
    store.empty?
  end

  private
  attr_reader :store
end
