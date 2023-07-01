# https://www.fe-siken.com/kakomon/sample/b8.html

class PrioQueue
  def initialize
    @pq = []
    @id = 0
  end

  def enqueue(s, prio)
    @pq << [prio, @id, s]
    @id += 1
    @pq.sort_by! { |x, y, z| [x, y] }
  end

  def dequeue
    @pq.shift[2]
  end

  def size
    @pq.size
  end
end

def prioSched
  prioQueue = PrioQueue.new
  prioQueue.enqueue("A", 1)
  prioQueue.enqueue("B", 2)
  prioQueue.enqueue("C", 2)
  prioQueue.enqueue("D", 3)
  prioQueue.dequeue
  prioQueue.dequeue
  prioQueue.enqueue("D", 3)
  prioQueue.enqueue("B", 2)
  prioQueue.dequeue
  prioQueue.dequeue
  prioQueue.enqueue("C", 2)
  prioQueue.enqueue("A", 1)
  while prioQueue.size != 0
    puts prioQueue.dequeue
  end
end

prioSched