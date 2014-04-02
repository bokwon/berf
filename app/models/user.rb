class User < ActiveRecord::Base
  
  has_many :contacts

  def add_contact(options_hash)
    self.contacts.build(options_hash)
  end

  

end
