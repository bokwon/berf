class User < ActiveRecord::Base

  has_many :contacts
  devise :database_authenticatable, :recoverable, :rememberable, 
         :trackable, :validatable, :registerable, :omniauthable

  MESSAGE = "Happy Birthday!!"

  def add_contact(options_hash)
    self.contacts.build(options_hash)
  end

  def self.trigger_birthday_messages!
    self.all.each do |user|
      user.message ? m = user.message : m = MESSAGE
      user.contacts.birthdays_today.each do |contact|
        UserMailer.sms_sent_notification(user, contact).deliver if contact.send_message(m)
      end
    end
  end

  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
    if user
      return user
    else
      registered_user = User.where(:email => access_token.info.email).first
      if registered_user
        return registered_user
      else
        user = User.create(first_name: data["first_name"],
          last_name: data["last_name"],
          provider:access_token.provider,
          email: data["email"],
          uid: access_token.uid ,
          password: Devise.friendly_token[0,20]
        )
      end
   end
end

end
