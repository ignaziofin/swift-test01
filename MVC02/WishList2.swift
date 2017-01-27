//
//  WishList2.swift
//  MVC02
//
//  Created by Ignazio Finizio on 20/01/2017.
//  Copyright © 2017 Ignazio Finizio. All rights reserved.
//

class WishList2: WishList {
    private var wishes: [(name: String, value: Int, shop: String, thumbnail: String)]
    
    override init(){
        wishes = [(name: "Yellow shirts", value: 3, shop: "zara", thumbnail: "YellowShirt"),
                  (name: "BigMac", value: 1, shop: "McDonalds", thumbnail: "BigMac"),
                  (name: "Blue Jacket", value: 2, shop: "Armani", thumbnail: "blueJacket")
        ]
    }
    
    override func name(_ index: Int) -> String {
        return wishes[index].name
    }

    override func ext1(_ index: Int) -> String {
        return wishes[index].shop
    }

    override func ext2(_ index: Int) -> String {
        return " val.: \(wishes[index].value) "
    }
    
    override func thumbnail(_ index: Int) -> String {
        return wishes[index].thumbnail
    }
    
    override func count() -> Int{
        return wishes.count
    }

    override func modelName() -> String {
        return "Wish List 2"
    }
}

