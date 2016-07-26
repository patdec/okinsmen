module OkmCore
  class Human < ApplicationRecord
    enum gender: %i[male female]
    has_many :addresses, class_name: 'OkmCore::Address'
    validates :gender, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
  end
end
