# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# every 1.day, :at => '11:15 am' do
#   runner "User.trigger_birthday_messages!"
# end

# Example:
#
# set :output, "/log/cron_log.log"
#
set :environment, 'development'

every 1.hour do
  rake "trigger_birthday_messages"
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
