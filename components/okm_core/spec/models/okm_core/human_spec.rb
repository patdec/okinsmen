require 'rails_helper'

module OkmCore
  RSpec.describe Human, type: :model do
    it { should  validate_presence_of(:gender) }
    it { should  validate_presence_of(:first_name) }
    it { should  validate_presence_of(:last_name) }
    it { should  have_many(:addresses) }
  end
end
