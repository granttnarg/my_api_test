require 'rails_helper'

describe Restaurant, type: :model do
  let!(:restaurant) { Restaurant.new({ name: 'Ottolenghi', address: '287 Upper Street, London' }) }

  describe '#name'  do
    it 'returns a name' do
      # restaurant = Restaurant.new({ name: 'Ottolenghi'})
      expect(restaurant.name).to eql('Ottolenghi')
    end
  end

  describe '#address' do
    it 'returns a address' do
      # restaurant = Restaurant.new({ address: '287 Upper Street, London'})
      expect(restaurant.address).to eql('287 Upper Street, London')
    end
  end

  it 'validates for name presence true' do
    expect(Restaurant.create(:name => "")).not_to be_valid
  end

 it "should have many comments" do
    t = Restaurant.reflect_on_association(:comments)
    expect(t.macro).to eq(:has_many)
  end

end
