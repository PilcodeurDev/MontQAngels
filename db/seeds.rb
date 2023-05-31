# creating users 
puts "Cleaning database..."
User.destroy_all

puts "Creating 5 new users..."
5.times do
    user = User.new(
    first_name: Faker::Name.first_name,
    last_name:  Faker::Name.last_name ,
    email: Faker::Internet.email,
    password: "topsecret", 
    password_confirmation: "topsecret"
    )
    user.save!

        puts "Creatin 5 new toilet papers"
        5.times do
            toilet_paper = ToiletPaper.new(
            title: Faker::TvShows::SouthPark.episode_name,
            price: Faker::Number.number(digits: 2),
            user: user
            )
            toilet_paper.save!
        end 
        puts "Finished toilet papers"
        
end 
puts "Finished users"
