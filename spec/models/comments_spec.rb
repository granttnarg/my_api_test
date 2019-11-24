require 'rails_helper'

describe Comment, type: :model do
  let!(:user) { User.create }
  let!(:restaurant) { Restaurant.create(name: "Ottolenghi", user: user) }

  let!(:comment) { Comment.create({ user: user, restaurant: restaurant }) }
  it 'Comment class should be defined' do
    expect(comment).to be_valid
  end
end
