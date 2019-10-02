class Show <  ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end
  def self.most_popular_show
    x = self.maximum(:rating)
    y = self.where(":rating == #{x}")

    y
end
end
