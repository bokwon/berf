class UserMailer < ActionMailer::Base
  default from: "berf12345@gmail.com"

  def sms_sent_notification(user, contact)
    @user = user
    mail(
      to: @user.email, 
      subject: "You just wished #{contact.nick_name} a happy birthday!",
      body: "Celebrate laziness! You just sent #{contact.nick_name} a happy birthday text message without lifting a finger.",
      content_type: "text/html"
    )
  end
end
