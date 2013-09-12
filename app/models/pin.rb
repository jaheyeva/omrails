class Pin < ActiveRecord::Base
  attr_accessible :description
  validates :description, presence: true, length: { in: 3..10, too_short: "Description is too short. Minimum %{count} characters are required.",
    too_long: "%{count} characters is the only maximum allowed" }
end