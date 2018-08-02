require './common'

users = User.where(gender: 'male').order('age')

users.each{ |user|
    p user
}