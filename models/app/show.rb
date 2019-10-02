class Show <  ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end
  def self.most_popular_show
    x = self.maximum(:rating).self.name
    y = self.select(:name).where(":rating == #{x}")
    y
end
end
