class Show <  ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end
  def self.most_popular_show
    x = Show.maximum(:rating)
    y = Show.find_by :rating == x
    y
end
  def self.lowest_rating
    self.minimum(:rating)
  end
  def self.least_popular_show
    xy = self.minimum(:rating)

    yy = self.find_by(:rating == xy)
    yy
end
end
