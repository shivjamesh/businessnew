class Businessform < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :name, :street, :state, :postcode, :website, :country, :phone, :category_id, :description, :city, presence: true
  validates :description, :length => { :minimum => 30, :maximum => 200 }
  validates :category, presence: true
end
