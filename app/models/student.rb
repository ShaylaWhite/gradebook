class Student < ApplicationRecord
    has_many :grades, dependent: :destroy
end 