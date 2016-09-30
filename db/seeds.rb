100.times do |n|

  # for i in 3..116 do
  # user = User.find(i)
  #   if user=!nil
  #   user.name = "name#{i}"
  #   user.save
  #   end
  # end

  email = Faker::Internet.email
  password = "password"
  name = "name#{n}"
  User.create!(email: email,
              password: password,
              password_confirmation: password,
              name: name,
              )

  title = Faker::Pokemon.name
  content = Faker::Superhero.name
  user_id = rand(100) + 1
  Blog.create!(title: title,
              content: content,
              user_id: user_id,
              )

end
