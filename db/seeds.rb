# frozen_string_literal: true

owner = User.create!(
  email: "user@example.com",
  password: "doorkeeper",
  password_confirmation: "doorkeeper"
)

app = Doorkeeper::Application.create!(
  name: "Doorkeeper Sinatra Client",
  redirect_uri: "https://doorkeeper-sinatra.herokuapp.com/callback",
  owner: owner
)

(0..1000).each do |index|
  owner.projects.create(
    name: Faker::Book.title,
    url: Faker::Internet.domain_name(subdomain: true),
  )
end

puts "Application: "
puts "name: #{app.name}"
puts "redirect_uri: #{app.redirect_uri}"
puts "uid: #{app.uid}"
puts "secret: #{app.secret}"
