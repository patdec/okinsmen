module OkmCore
  class Human < ApplicationRecord
    enum gender: {'male' => 'male', 'female' => 'female'}
    has_many :addresses, class_name: 'OkmCore::Address'
    validates :gender, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true

    def complete_name
      if male?
        result ='Mr '
      else
        result ='Ms '
      end
      result += "#{first_name} #{last_name}"
      result
    end
  end
end
