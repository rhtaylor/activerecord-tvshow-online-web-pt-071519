class Show <  ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end
  def self.most_popular_show
    x = self.maximum(:rating).self.name
    y = self.name.having(":rating == #{x}")
    y
end
end
