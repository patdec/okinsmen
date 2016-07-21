require 'rails_helper'

module OkmCore
  RSpec.describe Address, type: :model do
    it { should validate_presence_of(:street) }
    it { should validate_presence_of(:zip) }
    it { should validate_presence_of(:city) }
    it { should belong_to(:human) }

    it { should validate_numericality_of(:zip).only_integer }
    it do
      should validate_length_of(:zip).
       is_equal_to(5)
    end
  end
end
