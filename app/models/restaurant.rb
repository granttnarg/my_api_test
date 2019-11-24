class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :name, presence: true, uniqueness: true

  def intialize(attr = { name: name, address: address })
    @name = attr[:name]
    @address = attr[:address]
  end
end
