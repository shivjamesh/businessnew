class Businessform < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :category
  validates :name, :street, :state, :postcode, :website, :country, :phone, :category_id, :description, :city, presence: true
  validates :description, :length => { :minimum => 30, :maximum => 200 }


end
