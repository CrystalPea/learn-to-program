like = Proc.new do |good_stuff|
  puts "I *really* like #{good_stuff}!"
end

like.call "sleep"
like.call "to do stuff PROPERLY"