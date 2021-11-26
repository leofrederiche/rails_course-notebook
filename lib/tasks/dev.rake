namespace :dev do

  desc "Insert Data on database from development"
  task data: :environment do
    confirm = "." * 10 + "OK"    

    puts "Seeding Kinds"
    Kind.create([
        { description: "Amigo" },
        { description: "Familia" },
        { description: "Trabalho" },
        { description: "Contato" }
    ])
    puts confirm


    puts "Seeding Contacts"
    10.times do |index|
        Contact.create(
            name: Faker::Name.name,
            email: Faker::Internet.email,
            kind: Kind.all.sample,
            rmk: Faker::Lorem.paragraph
        )
    end
    puts confirm

    puts "Seeding Address"
    Contact.all.map do |contact|
        Address.create(
            street: Faker::Address.street_address,
            city: Faker::Address.city,
            state: Faker::Address.state_abbr,
            contact: contact
        )
    end
    puts confirm

    puts "Seeding Phones"
    Contact.all.map do |contact|
        Random.rand(1..5).times do |i|
            Phone.create!(
                phone: Faker::PhoneNumber.cell_phone,
                contact: contact
            )
        end
    end
    puts confirm
  end

end
