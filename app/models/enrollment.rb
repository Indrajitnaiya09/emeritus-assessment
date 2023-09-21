class Enrollment < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  belongs_to :teacher, foreign_key: :teacher_id, class_name: 'User'
  belongs_to :program
  belongs_to :student, foreign_key: :user_id, class_name: 'User'

  scope :favorites, -> { where(favorite:  true) }
end
