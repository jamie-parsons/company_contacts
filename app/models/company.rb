class Company < ApplicationRecord
    has_many :people, dependent: :destroy
end
