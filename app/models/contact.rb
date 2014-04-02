class Contact < ActiveRecord::Base
  belongs_to :user

  def self.birthdays_today  
    # This is SQLite Specific, Won't Work in Postgres
    where("strftime('%d', birthday) = ? AND strftime('%m', birthday) = ?", Date.today.strftime('%d'), Date.today.strftime('%m'))
  end

  def send_message(message)
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    client = Twilio::REST::Client.new account_sid, auth_token

    from = "+19172424924"

    client.account.messages.create(
      :from => from,
      :to => self.phone_number,
      :body => message
    )
    #TODO "Sent message to #{name}"
  end
end
  
