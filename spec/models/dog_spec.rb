require 'rails_helper'

RSpec.describe Dog, type: :model do
  new_dog = FactoryBot.create(:dog)
  it "is not valid without a name" do
    expect(new_dog.name).to_not be_empty
  end
end
