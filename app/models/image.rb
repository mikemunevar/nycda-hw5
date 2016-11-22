class Image < ActiveRecord::Base
    
    #IMAGE belongs_to PRODUCT
    belongs_to :product
end
