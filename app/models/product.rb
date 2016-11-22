class Product < ActiveRecord::Base
    has_many :orders
    has_many :orders_products , through: :orders
    
    #PRODUCT has_many IMAGES
    has_many :images
    
    #PRODUCT belongs_to PERSON
    belongs_to :person

end
