class Topic < ApplicationRecord
  has_many :questions
  has_many :surveys
end
