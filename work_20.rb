require './common'

users = User.where(gender: 'female')

users.each{ |user|
    p user
}