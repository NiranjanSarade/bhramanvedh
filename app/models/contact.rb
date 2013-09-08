class Contact
   extend ActiveModel::Naming
   include ActiveModel::Conversion
   include ActiveModel::Validations
   
   validates :name, :presence => true
   validates :email, :presence => true
   validates :email, :format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
   validates :contact_no, :presence => true
   validates :message, :presence => true
   validates :message, :length => { :minimum => 15, :maximum => 1000 }

   attr_accessor :name, :email, :contact_no, :message 
   
   def initialize(attributes = {})
     @name  = attributes[:name]
     @email = attributes[:email]
     @contact_no = attributes[:contact_no]
     @enquiry = attributes[:message]
   end
   
   def persisted?
     false
   end  
   
   def deliver
     return false unless valid?
     true
   end 
   
 end