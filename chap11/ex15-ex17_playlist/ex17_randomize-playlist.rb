def shuffle array
  unshuffled = array.dup
  shuffled = []
  while unshuffled != []
    maxind = unshuffled.length - 1
    random = rand(0..maxind)
    moving = unshuffled[random]
        last_split = []
        next_split = moving.split("/")
    if (last_split.pop) != (next_split.pop)
      shuffled.push moving
      unshuffled.delete_at(unshuffled.index(moving))
      last_split = (shuffled.last).split("/")
    end
  end
  array = shuffled
end

play_arr = []
play_string = File.read "ex15_playlist.m3u"
play_arr = play_string.split("\n")
puts play_arr

shuffled_playlist = shuffle play_arr

File.open "ex17_randomized-playlist.m3u", "w" do |f|
  f.write shuffled_playlist.join("\n")
end
