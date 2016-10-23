def shuffle array
  unshuffled = array.dup #I had a problem that method was changing array, solved it with .dup
  shuffled = []
  while unshuffled != []
    maxind = unshuffled.length - 1
    random = rand(0..maxind)
    moving = unshuffled[random]
    shuffled.push moving
    unshuffled.delete_at(unshuffled.index(moving))
  end
  array = shuffled
end

play_arr = []
play_string = File.read "ex15_playlist.m3u"
play_arr = play_string.split("\n")
puts play_arr

shuffled_playlist = shuffle play_arr

File.open "ex16_shuffled-playlist.m3u", "w" do |f|
  f.write shuffled_playlist.join("\n")
end
