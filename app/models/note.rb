class Note < ApplicationRecord
  belongs_to :user
  belongs_to :project

  scope :with_body, lambda { |terms| where("body " + Common.like_operator + " ?", terms) }
end
