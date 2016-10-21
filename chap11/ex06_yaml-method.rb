require "yaml"

def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end

def yaml_load filename
  yaml_string = File.read filename
  YAML::load yaml_string
end

fav_books = ["Everything is Illuminated",
"A Song of Ice and Fire",
"Atlas:Doppleganger"]

yaml_save fav_books, "ex06_Pea's favourite books.txt"
read_array = yaml_load "Pea's favourite books.txt"

if read_array == fav_books
puts "Yay! My YAML method works! <3"
end