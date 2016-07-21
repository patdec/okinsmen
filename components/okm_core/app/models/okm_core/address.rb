module OkmCore
  class Address < ApplicationRecord
    belongs_to :human, class_name: 'OkmCore::Human'
    validates :street, presence: true
    validates :zip, presence: true, numericality: {only_integer: true}, length: {is: 5}
    validates :city, presence: true
  end
end
