class Dojo < ActiveRecord::Base
  validates :name, :city, :state, presence: true
  validates :state, length: { is: 2 }, allow_blank: false
  has_many :ninjas
end
