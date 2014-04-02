class User < ActiveRecord::Base

  has_many :contacts
  MESSAGE = "Happy Birthday!!"

  def add_contact(options_hash)
    self.contacts.build(options_hash)
  end

  def self.trigger_birthday_messages!
    message ||= MESSAGE
    contacts.birthdays_today.each do |contact|
      contact.send_message(message)
    end
  end

end
