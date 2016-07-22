require './models/user'

(0..10).each do |i|
  User.create(name: "User#{i}", email: "User#{i}", password: "User#{i}", cc_number: "User#{i}")
end
