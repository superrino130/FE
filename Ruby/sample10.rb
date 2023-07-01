# https://www.fe-siken.com/kakomon/sample/b10.html

class ListElement
  attr_accessor :val, :next

  def initialize(qVal)
    @val = qVal
  end
end

def append(qVal)
  curr = ListElement.new(qVal)
  if @listHead.nil?
    @listHead  = curr
  else
    prev = @listHead
    while prev.next.nil?.!
      prev = prev.next
    end
    prev.next = curr
  end
end

def printList
  curr = @listHead
  while curr.nil?.!
    puts curr.val
    curr = curr.next
  end
end

def delNode(pos)
  if pos == 1
    @listHead = @listHead.next
  else
    prev = @listHead
    for i in 2..(pos - 1)
      prev = prev.next
    end
    prev.next = prev.next.next
  end
end

append(1)
append(5)
append(3)
append(4)
append(2)
puts "--------------------"
printList
delNode(4)
puts "--------------------"
printList