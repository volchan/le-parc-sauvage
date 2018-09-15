require 'yaml'

Item.destroy_all

items_data = YAML.load(File.read('db/seed_data/items.yml'))
items_data.each do |item|
  Item.create!(item)
end
