@user = User.create(email: "hi@test.com", password: "Darren", password_confirmation: "Darren", first_name: "Me", last_name: "hello")
puts "1 user created"

100.times do |post|
	Post.create(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 posts have been created"