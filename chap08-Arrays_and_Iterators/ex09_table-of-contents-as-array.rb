toc = ["Table of Contents", "Chapter 1", "page 1", "Chapter 2", "page 2", "Chapter 3", "page 3"]
lineWidth = 60
puts toc[0].center lineWidth
i = 0
until i == 6
puts
puts toc[i += 1].ljust(lineWidth/2) + toc[i += 1].rjust(lineWidth/2)
end