class Company < ApplicationRecord
  has_many :complaints, dependent: :delete_all
end
