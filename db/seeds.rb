Product.delete_all
Product.create! id: 1, title: "Banana", price: 0.49, inventory_count: 5
Product.create! id: 2, title: "Apple", price: 0.29, inventory_count: 10
Product.create! id: 3, title: "Orange", price: 1.99, inventory_count: 20
Product.create! id: 4, title: "Melon", price: 4.99, inventory_count: 7
Product.create! id: 5, title: "Dragonfruit", price: 4.99, inventory_count: 0

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Completed"
