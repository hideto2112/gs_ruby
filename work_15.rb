require './common'

dataRange   = 1..50
ageRange    = 0..100
genderArray = ["male", "female"]


dataRange.each do |num|
    gender = genderArray[rand(2)]
    age = rand(ageRange)
    User.create(
        gender: gender,
        age: age
    )
end

