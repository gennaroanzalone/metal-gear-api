class Character < ApplicationRecord

  scope :search, -> (name_parameter) { where("name like ?", "%#{name_parameter}%")}


end
