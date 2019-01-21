# README

$ rails server

To fetch all products from the terminal (using httpie)
$ http :3000/products

To fetch only available products
$ http :3000/products?only_available=true

To fetch a single product
$ http :3000/products/id

To "purchase" a single product
$ http PUT :3000/products/id purchase=true
