class User < ActiveRecord::Base
    validates :username, presence: true, length: { minimum: 3, maximum: 40 }
   
   has_many :contracts
    
end