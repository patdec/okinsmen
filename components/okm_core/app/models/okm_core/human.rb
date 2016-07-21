module OkmCore
  class Human < ApplicationRecord
    has_many :addresses, class_name: 'OkmCore::Address'
    validates :first_name, presence: true
    validates :last_name, presence: true
  end
end
