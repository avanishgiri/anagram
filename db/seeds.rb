File.open("words","r").each_line do |line|
  word = line.downcase.chomp
  Word.create(actual: word)
end
