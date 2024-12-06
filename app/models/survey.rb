class Survey < ApplicationRecord
  has_many :questions
  belongs_to :topic
  belongs_to :customer
  belongs_to :question, optional: true
end
