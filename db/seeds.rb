# creating users
puts "Cleaning database..."
User.destroy_all

puts "Creating 5 new users..."
5.times do
    User.create!(
    first_name: Faker::Name.first_name,
    last_name:  Faker::Name.last_name ,
    email: Faker::Internet.email,
    password: "topsecret", 
    password_confirmation: "topsecret"
    )
end
puts "Finished users"
thicknessese = ["single-ply", "2-ply", "3-ply", "4-ply"]
colors = ["pink", "yellow", "black"]
User.all.each do |user|
    puts "Creating 1 to 5 new toilet papers for user #{user.id}"
    rand(1..5).times.each do
        user.toilet_papers.create!({
            color: colors[rand(1)],
            thickness: thicknessese[rand(1)],
            scent: Faker::Dessert.flavor,
            price: Faker::Number.number(digits: 2),
            title: Faker::TvShows::SouthPark.episode_name,
            description: Faker::Coffee.notes,
            photo_url: "image1.jpg",
            user:
        })
    end
end
puts "Finished toilet papers"

