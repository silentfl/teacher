class Exercise < ApplicationRecord
  belongs_to :task, class_name: 'Course'
  belongs_to :user

  enum status: %i(created started accepted)
end
