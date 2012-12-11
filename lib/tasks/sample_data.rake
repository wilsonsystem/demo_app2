namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
  admin = User.create!(name: "Wilson Cheng",
                 email: "wilson.system1@gmail.com",
                 password: "123456",
                 password_confirmation: "123456")
                 admin.toggle!(:admin)


    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@gmail.com"
      password  = "123456"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
