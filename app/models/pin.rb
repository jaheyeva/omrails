class Pin < ActiveRecord::Base
  attr_accessible :description
  
  validates :description, presence: { :message => "Please add description." }, length: { in: 3..20, too_short: "Description is too short. Minimum %{count} characters are required.",
    too_long: "%{count} characters is the only maximum allowed" }
end