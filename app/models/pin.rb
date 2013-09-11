class Pin < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true, length: { minimum: 1 }
end
