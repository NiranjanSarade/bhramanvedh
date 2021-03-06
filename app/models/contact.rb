class Contact
   extend ActiveModel::Naming
   include ActionView::Helpers::TextHelper
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
     @message = attributes[:message]
   end
   
   def persisted?
     false
   end  
   
   def deliver
     return false unless valid?
     msg = "#{message} \n Contact :- #{contact_no}"
     Pony.mail({
           :from => %("#{name}" <#{email}>),
           :reply_to => email,
           :subject => "Tour enquiry from Bhramanvedh.com -> contact",
           :body => msg,
           :html_body => simple_format(msg)
         })
   end 
   
 end