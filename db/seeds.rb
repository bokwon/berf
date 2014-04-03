# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

boyoung = User.create(first_name: 'Boyoung', last_name: 'Kwon', phone_number: '515-519-2373', email: "boyoung.kwon@gmail.com", password: "123456789", password_confirmation: "123456789")
morgan = User.create(first_name: 'Morgan', last_name: 'Evans', phone_number: '515-519-2373', email: "morganrevans@gmail.com", password: "123456789", password_confirmation: "123456789")
alisha = User.create(first_name: 'Alisha', last_name: 'McWilliams', phone_number: '515-519-2373', email: "abmcwilliams@gmail.com", password: "123456789", password_confirmation: "123456789")
avi = User.create(first_name: 'Avi', last_name: 'Flombaum', phone_number: '515-519-2373', email: "avi@flatironschool.com", password: "123456789", password_confirmation: "123456789")
test1 = User.create(first_name: 'Test1', last_name: 'Test1', phone_number: '515-519-2373', email: "test1@flatironschool.com", password: "123456789", password_confirmation: "123456789")
test2 = User.create(first_name: 'Test2', last_name: 'Test2', phone_number: '515-519-2373', email: "test2@flatironschool.com", password: "123456789", password_confirmation: "123456789")


boyoung.add_contact(:first_name => 'Henry', :last_name => 'McCoy', :nick_name => 'Beast', :phone_number => '515-519-2373', :birthday => '1972/4/4', :email => 'beast@xmen.com')
boyoung.add_contact(:first_name => 'Anna', :last_name => 'Marie', :nick_name => 'Rogue', :phone_number => '515-519-2373', :birthday => '1981/4/4', :email =>'rogue@xmen.com')
morgan.add_contact(:first_name => 'Scott', :last_name => 'Summers', :nick_name => 'Cyclops', :phone_number => '515-519-2373', :birthday => '1963/4/5', :email => 'cyclops@xmen.com')
morgan.add_contact(:first_name => 'Emma', :last_name => 'Steed', :nick_name => 'Black Queen', :phone_number => '515-519-2373', :birthday => '1996/4/5', :email => 'blackqueen@xmen.com')
morgan.add_contact(:first_name => 'Val', :last_name => 'Ventura', :nick_name => 'Flatman', :phone_number => '515-519-2373', :birthday => '1989/4/6', :email => 'flatman@xmen.com')
alisha.add_contact(:first_name => 'Jean', :last_name => 'Grey', :nick_name => 'Phoenix', :phone_number => '515-519-2373', :birthday => '1981/4/7', :email => 'phoenix@xmen.com')

boyoung.save
morgan.save
alisha.save