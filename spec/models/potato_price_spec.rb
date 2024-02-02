require 'rails_helper'

RSpec.describe PotatoPrice, type: :model do
  it 'is valid with valid attributes' do
    potato_price = PotatoPrice.new(time: DateTime.now, value: 100.25)
    expect(potato_price).to be_valid
  end

  it 'is not valid without a value' do
    potato_price = PotatoPrice.new(time: DateTime.now)
    expect(potato_price).not_to be_valid
  end
end
