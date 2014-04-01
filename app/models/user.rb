class User < ActiveRecord::Base
  acts_as_birthday :birthday
  
  has_many :contacts
end
