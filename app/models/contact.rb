class Contact < ActiveRecord::Base
  belongs_to :user

  def self.birthdays_today  
    # This is SQLite Specific, Won't Work in Postgres
    where("strftime('%d', birthday) = ? AND strftime('%m', birthday) = ?", Date.today.strftime('%d'), Date.today.strftime('%m'))
    
  end
end
