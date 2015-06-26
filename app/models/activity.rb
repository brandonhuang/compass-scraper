class Activity < ActiveRecord::Base

  scope :search, -> (query){ where("lower(title) like ?", "%#{query.downcase}%")}

end
