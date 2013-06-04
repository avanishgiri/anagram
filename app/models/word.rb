class Word < ActiveRecord::Base
  before_save do |word|
    word.sorted = word.actual.split(//).sort.join
  end
end
