require_relative '../queue'

describe Queue do

  context 'new instance needed' do
    it 'creates a new instance' do
      new_queue = Queue.new
      expect(new_queue.class).to eq Queue
    end
  end

  let (:queue) {Queue.new}
  context 'when the queue empty' do
    it 'tells us the queue is empty' do
      is_empty = queue.empty?
      expect(is_empty).to eq true
    end

    it 'tells us the there is no top element' do
      no_peek = queue.peek
      expect(no_peek).to eq nil
    end
  end

  let(:two_queue) { $two_queue = Queue.new ; $two_queue.add("first") ; $two_queue.add("second") }

  context 'when the queue is not empty' do
    it 'tells us the queue is not empty' do
      is_not_empty = two_queue.empty?
      expect(is_not_empty).to eq false
    end

    it 'returns the top element when using #peek' do
      peek = two_queue.peek
      expect(peek).to eq "first"
    end

    it 'peek does not remove top element' do
      peek = two_queue.peek
      expect(peek).to eq two_queue.peek
    end

    it 'returns the top element with #take' do
      take = two_queue.take
      expect(take).to eq "first"
    end

    it 'top element is removed with #take' do
      take = two_queue.take
      expect(take).to_not eq two_queue.take
    end
  end
end
