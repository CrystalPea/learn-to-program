#so I think this is not what I was emant to do, but hey, it works. 
#I will try to find a way to apply dictionary rules on my sorting algorithms if I have time later.
def d_sort array
  to_sort = array.dup
  to_sort.sort_by { |x| x.downcase }
end

arr = ["Buka", "biwak", "Apple", "agat"]
puts d_sort arr
