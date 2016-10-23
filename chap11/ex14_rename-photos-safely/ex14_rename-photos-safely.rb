Dir.chdir './renamed-and-moved-photos'
pic_names = Dir['../photos-to-rename-and-move/*.{JPG,jpg}']

puts "What would you like to call this batch?"
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print "."
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  if (File.exist? new_name) == true
    puts "Error numero potato! File named #{new_name} already exists. Do you want to overwrite it? Please answer with either 'yes' or 'no'."
    answer = gets.chomp
    if answer.downcase == "yes"
      File.rename name, new_name
      pic_number = pic_number + 1    
    elsif answer.downcase == "no"
      puts "Ok, this program terminates now."
      exit
    else
      "The answer needs to be either 'yes or 'no'"
    end
  else
    File.rename name, new_name
    pic_number = pic_number + 1
  end
end
puts "Done, you're welcome!"