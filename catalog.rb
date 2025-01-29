# products = [
#   { name: "Laptop", price: 1000, tags: ["electronics", "computers"] },
#   { name: "Book", price: 20, tags: ["education", "literature"] },
#   { name: "Coffee Mug", price: 10, tags: ["kitchen", "beverage"] }
# ]


catalog = [
  { item: "Apple",
    price: 0.45,
    category: "Food",
    tags: ["produce", "fruit"]
  },
  { item: "Carrot",
    price: 0.36,
    category: "Food",
    tags: ["produce", "vegetable"]
  }
]

loop do
  puts "\nCatalog Menu
  1) Add an item
  2) View all items
  3) Exit"
  puts "Please input 1, 2, or 3."
    choice = gets.chomp.to_i

  if choice == 1
    puts "Enter catalog item."
    item = gets.chomp.capitalize
    puts "Enter #{item}'s price."
    price = gets.chomp.to_f
    puts "Enter #{item}'s category."
    category = gets.chomp.capitalize
    puts "Enter two tags for #{item}. (Ex. tag1, tag2) "
    tags = gets.chomp.downcase.split(",")
    puts "Item added to catalog. \n "
    
    catalog << { item: item, price: price, category: category, tags: tags}
    
  elsif choice == 2
    if catalog == []
      puts "Catalog: -Currently holds #{catalog.length} items-"
      puts "------------------------------------"
      puts "No items found. \n "
    else
      if catalog.length == 1
        puts "Catalog: -Currently holds #{catalog.length} item-"
      else 
        puts "Catalog: -Currently holds #{catalog.length} items-"
      end
      puts "------------------------------------"
      catalog.each do |item_info|
        puts "Item: #{item_info[:item]} \n "
        puts "Price: $#{item_info[:price]} \n "
        puts "Category: #{item_info[:category]} \n "
        puts "Tags:"
        item_info[:tags].each do |tag|
          puts "-#{tag}"
        end
        puts "------------------------------------ \n "
      end
    end 

  elsif choice == 3
    puts "Catalog Closed"
    break

  else
    puts "Invalid choice. Please try again."
  end
end