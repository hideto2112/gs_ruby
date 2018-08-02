require './common'

users = User.order('age')

# pp users

users.each{ |user|
    p user
}