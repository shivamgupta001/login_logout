class User < ActiveRecord::Base
   attr_accessible :email , :password
    validates :email , :presence=>true , :uniqueness=>true ,
                                         :length => {:within => 5..50},
                                         :format => {:with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i }
    validates :password , :presence=>true , :length => {:within => 5..10}
end
