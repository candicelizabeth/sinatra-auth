class User < ActiveRecord::Base 
    has_many :movies
    validates :email, :password, presence: true
    has_secure_password # "abc" => "dlsdkfjasdleeralksdr"
end