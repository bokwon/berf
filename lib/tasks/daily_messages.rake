desc "send daily messages"
task trigger_birthday_messages: :environment do
  User.trigger_birthday_messages!
end