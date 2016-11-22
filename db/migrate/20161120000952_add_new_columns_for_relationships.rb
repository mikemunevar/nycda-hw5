class AddNewColumnsForRelationships < ActiveRecord::Migration
  def change
    # Example
    # add_column(:users, :email, :string)
    
    # PERSON
    # order_id:integer   #PERSON has_many ORDERs
    add_column(   :people,  :order_id,  :integer )
    # address_id:integer  #PERSON has_many ADDRESSes
    add_column(   :people,  :address_id,  :integer )
    # product_id:integer  #PERSON has_many PRODUCTs
    add_column(   :people,  :product_id,  :integer )


    # ADDRESS    
    # person_id:integer       #ADDRESS has_many PERSONs(PEOPLE)
    add_column(   :addresses,  :person_id,  :integer )

    
    # PRODUCT
    # person_id:integer       #PRODUCT belongs_to PERSON
    add_column(   :products,  :person_id,  :integer )
    # order_id:integer        #PRODUCT has_many ORDERs
    add_column(   :products,  :order_id,  :integer )


    # IMAGE
    # product_id:integer   #IMAGE belongs_to PRODUCT
    add_column(   :images,  :product_id,  :integer )

    
  end
end
