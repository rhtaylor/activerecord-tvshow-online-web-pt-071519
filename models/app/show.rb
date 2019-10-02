class Show <  ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end
  def self.most_popular_show
    x = Show.maximum(:rating)
    y = Show.find(:rating = 10)
    y
end
end
