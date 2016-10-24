def do_self_importantly some_proc
  puts "Everybody just HOLD ON! I'm doing something..."
  some_proc.call
  puts "OK everyone, I'm done. As you were."
end

say_hello = Proc.new do
  puts "*belches*"
end

say_goodbye = Proc.new do
  puts "*goes on the table* Look at me now, feast your eyes!"
end

do_self_importantly say_hello
puts
do_self_importantly say_goodbye