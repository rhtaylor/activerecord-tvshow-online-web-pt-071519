class Show <  ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end
  def self.most_popular_show
    x = self.find_by(Show.maximum(:rating))
    binding.pry
end
