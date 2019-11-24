require 'rails_helper'

describe User, type: :model do
  it "should have many comments" do
    t = User.reflect_on_association(:comments)
    expect(t.macro).to eq(:has_many)
  end

  it "should have many restaurants" do
    t = User.reflect_on_association(:restaurants)
    expect(t.macro).to eq(:has_many)
  end
end
