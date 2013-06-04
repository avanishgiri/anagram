get '/' do
  erb :index
end

post '/' do
  word_sorted = params[:word].chomp.downcase.split(//).sort.join
  @anagrams = Word.where(sorted: word_sorted).map { |word| word.actual }
  erb :_answer, :layout => false
end
