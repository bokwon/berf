class User < ActiveRecord::Base

  has_many :contacts
  devise :database_authenticatable, :recoverable, :rememberable, 
         :trackable, :validatable, :registerable

  MESSAGE = "Happy Birthday!!"

  def add_contact(options_hash)
    self.contacts.build(options_hash)
  end

  def self.trigger_birthday_messages!
    self.all.each do |user|
      user.message ? m = user.message : m = MESSAGE
      user.contacts.birthdays_today.each do |contact|
        puts "success sending text to #{contact.nick_name}" if contact.send_message(m)
        
      end
    end
  end

end
