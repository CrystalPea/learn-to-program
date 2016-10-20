#Quicksort works well with Dictionary sorting rules.
def sort array
  tosort = array.dup
  return [] if tosort.length == 0
  pivot = tosort.shift
  less, more = tosort.partition {|e| e.downcase < pivot.downcase }
  sort(less) + [pivot] + sort(more)
end

arr = ["Buka", "biwak", "Apple", "agat"]
puts sort arr
