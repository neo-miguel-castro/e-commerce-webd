require 'open-uri'

def attach_image_to_product(product, image_url)
  downloaded_image = URI.open(image_url)
  product.image.attach(io: downloaded_image, filename: File.basename(URI.parse(image_url).path))
rescue OpenURI::HTTPError => e
  puts "Failed to download image for #{product.name}: #{e.message}"
end

ProductCategory.delete_all
monster = ProductCategory.create! name: "Monster"
spell = ProductCategory.create! name: "Spell"
trap = ProductCategory.create! name: "Trap"
extra_deck = ProductCategory.create! name: "Extra Deck"


Product.delete_all

# Data comes from external source ygoprodeck: https://ygoprodeck.com/card-database/?&sort=new&sortorder=asc&num=100&offset=0
file = File.read(Rails.root.join('lib', 'assets', 'yugioh_cards.json'))
cards = JSON.parse(file)["cards"]

cards.each do |card|
  category = case card["type"]
             when /Effect Monster|Normal Monster/ then monster
             when /Spell Card/ then spell
             when /Trap Card/ then trap
             else extra_deck
             end

  product = Product.create!(
    name: card["name"],
    description: card["desc"],
    price: rand(1.0..100.0).round(2),
    active: true,
    product_category: category
  )

  image_url = "https://images.ygoprodeck.com/images/cards/#{card['id']}.jpg"
  attach_image_to_product(product, image_url)
end

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

