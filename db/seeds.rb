require 'csv'

Product.destroy_all
Category.destroy_all

csv_file = Rails.root.join('db/products.csv')
csv_data = File.read(csv_file)
products = CSV.parse(csv_data, headers: true)

products.each do |product|
  category_name = product['category']
  category = Category.find_or_create_by(name: category_name)

  Product.create(
    title: product['name'],
    description: product['description'],
    price: product['price'],
    stock_quantity: product['stock quantity'],
    category: category
  )
end
