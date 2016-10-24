$depth = 0
  
def logger block_description, &block
  ind = "  " * $depth
  puts ind + "Attention, a block of code, \"#{block_description}\", is going to be executed!"
  $depth += 1
  log = block.call
  $depth -= 1
  puts ind + "The block of code known as \"#{block_description}\" has been executed returning: \"#{log}\"."
end

logger "matrioszka" do
  logger "babyblock" do
    logger "antblock" do
       "Work hard for the good of the community!"
    end
    21 * 2
  end
  logger "I'm last I promise" do
    "are you happy now?".upcase
  end
  "matrioszka says: look deeper!"
end