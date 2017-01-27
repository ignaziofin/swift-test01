//
//  WishList1.swift
//  MVC02
//
//  Created by Ignazio Finizio on 20/01/2017.
//  Copyright © 2017 Ignazio Finizio. All rights reserved.
//  test01

class WishList1: WishList {
    private var wishes: [(name: String,  price: Float, thumbnail: String, stars: String)]

    override init(){
        wishes = [(name: "Pandoro al limoncello",  price: 12.0, thumbnail: "pandoro", stars: "⭐️⭐️⭐️⭐️"),
                  (name: "Tahiti", price: 5000.0, thumbnail: "tahiti", stars: "⭐️⭐️"),
                  (name: "Samsung Galaxy",  price: 400, thumbnail: "galaxy", stars: "⭐️⭐️⭐️⭐️"),
                  (name: "other", price: 11.12, thumbnail: "wish", stars: "⭐️⭐️⭐️")
        ]
    }
    
    override func name(_ index: Int) -> String {
        return wishes[index].name
    }

    override func ext1(_ index: Int) -> String {
        return wishes[index].stars
    }
    
    override func ext2(_ index: Int) -> String {
        return " € \(wishes[index].price) "
    }   
    
    override func thumbnail(_ index: Int) -> String {
        return wishes[index].thumbnail
    }
    
    override func count() -> Int{
        return wishes.count
    }
    
    override func modelName() -> String {
        return "Wish List 1"
    }
}
