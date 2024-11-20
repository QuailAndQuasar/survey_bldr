class Question < ApplicationRecord
  has_many :options, dependent: :destroy
  belongs_to :topic
  belongs_to :survey, optional: true
end
