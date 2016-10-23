contents = Dir["./Music/**/*.mid"].join("\n")

File.open "ex15_playlist.m3u", "w" do |f|
  f.write contents
end