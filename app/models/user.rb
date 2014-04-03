class User < ActiveRecord::Base
  has_many :contacts
  devise :database_authenticatable, :recoverable, :rememberable, 
         :trackable, :validatable, :registerable

  #attr_accessible :email, :password, :password_confirmation 

  def add_contact(options_hash)
    self.contacts.build(options_hash)
  end

end
