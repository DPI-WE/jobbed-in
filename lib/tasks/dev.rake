unless Rails.env.production?
  namespace :dev do
    desc "Drops, creates, migrates, and adds sample data to database"
    task reset: [
      :environment,
      "db:drop",
      "db:create",
      "db:migrate",
      "dev:sample_data"
    ]

    desc "Adds sample data for development environment"
    task sample_data: :environment do
      puts "Creating sample users..."
      names = ["ian", "brian", "grace"]
      names.each do |name|
        User.create(
          email: "#{name}@example.com",
          username: name,
          profile_photo: "https://robohash.org/#{name}",
          password: "password"
        )
      end

      puts "Creating sample jobs..."
      10.times do
        Job.create(
          title: Faker::Company.profession,
          link: Faker::Company.logo,
          description: Faker::Company.catch_phrase,
          category: Faker::Company.industry,
          deadline: Date.today + rand(52).weeks,
          user: User.all.sample
        )
      end

      # TODO: favorites

      # TODO: comments

      puts "Done"
    end
  end
end
