class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates :description, :title, :price, presence: true
  validates :price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }

  def average_rating
    reviews.map(&:rating).reduce(:+).to_f / reviews.size
  end
end
