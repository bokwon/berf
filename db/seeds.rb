# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

wolverine = User.create(first_name: 'James', last_name: 'Howlett', nick_name: 'Wolverine', phone_number: '555-555-5555', birthday: '1974/7/8', email: 'wolverine@xmen.com')
storm =  User.create(first_name: 'Ororo', last_name: 'Munroe', nick_name: 'Storm', phone_number: '555-555-5555', birthday: '1976/7/8', email: 'storm@xmen.com')
prof_x = User.create(first_name: 'Charles', last_name: 'Xavier', nick_name: 'Professor X', phone_number: '555-555-5555', birthday: '1963/7/8', email: 'profx@xmen.com')


wolverine.add_contact(:first_name => 'Henry', :last_name => 'McCoy', :nick_name => 'Beast', :phone_number => '515-519-2373', :birthday => '1972/3/27', :email => 'beast@xmen.com')
wolverine.add_contact(:first_name => 'Anna', :last_name => 'Marie', :nick_name => 'Rogue', :phone_number => '515-519-2373', :birthday => '1981/7/8', :email =>'rogue@xmen.com')
storm.add_contact(:first_name => 'Scott', :last_name => 'Summers', :nick_name => 'Cyclops', :phone_number => '515-519-2373', :birthday => '1963/1/14', :email => 'cyclops@xmen.com')
storm.add_contact(:first_name => 'Emma', :last_name => 'Steed', :nick_name => 'Black Queen', :phone_number => '515-519-2373', :birthday => '1996/1/14', :email => 'blackqueen@xmen.com')
storm.add_contact(:first_name => 'Val', :last_name => 'Ventura', :nick_name => 'Flatman', :phone_number => '515-519-2373', :birthday => '1989/2/28', :email => 'flatman@xmen.com')
prof_x.add_contact(:first_name => 'Jean', :last_name => 'Grey', :nick_name => 'Phoenix', :phone_number => '515-519-2373', :birthday => '1981/9/23', :email => 'phoenix@xmen.com')

wolverine.save
storm.save
prof_x.save