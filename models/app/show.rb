class Show <  ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end
  def self.most_popular_show
    x = self.maximum(:rating)
    self.where(":rating == #{x}")
    binding.pry
end
end
