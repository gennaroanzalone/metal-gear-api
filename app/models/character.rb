class Character < ApplicationRecord

  scope :search, -> (char_name_parameter) { where("char_name like ?", "%#{char_name_parameter}%")}


end
