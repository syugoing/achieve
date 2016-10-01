class SubmitRequest < ApplicationRecord
  belongs_to :task
  belongs_to :user
  belongs_to :charger, class_name: 'User', foreign_key: 'charge_id'
end
