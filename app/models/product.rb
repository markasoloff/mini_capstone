class Product < ApplicationRecord
  #validations are the first thing written after class line
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  validates :description, length: { in: 1..1000 }
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  
  belongs_to :supplier
  has_many :images

  has_many :categories, through: :product_categories


  has_many :carted_products
  has_many :orders, through: :carted_products
  # has_many :users, through: :carted_products
  
  def images
    Image.where(image_id: id)
  end

  def description_list
    description.split(", ")
    # 'description here acts as an attr. When applied to product.description, it will make that data dispaly as an array in browswer.'

  end

  def friendly_created_at
    created_at.strftime("%m/%d/%Y")
  end

  def is_discounted?
    price > 5000
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end

#the following method only applies to Josh's cookbook app
  # def friendly_prep_time
  #   prep_time/60
  #   minutes = prep_time % 60
  #   time_message = ""

  #   if hours > 0
  #     time_message +=  "{#{hours} Hours"

  #   if hours > 0 && minutes > 0 
  #       time_message += ", "
  #   if minutes > 0
  #     time_message += "#{minutes} Minutes"
  #   end


  #   "{#{hours} hours, #{minutes} minutes"
  # end


