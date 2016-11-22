class Order < ActiveRecord::Base
    has_many :products
    has_many :orders_products , through: :products
    
    #ORDER belongs_to PERSON
    belongs_to :person
end
