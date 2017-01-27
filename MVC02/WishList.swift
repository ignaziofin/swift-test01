//
//  WishList.swift
//  MVC02
//
//  Created by Ignazio Finizio on 20/01/2017.
//  Copyright © 2017 Ignazio Finizio. All rights reserved.
//

class WishList {
    private var wishes: [(name: String, thumbnail: String)]
    
    init(){
        wishes = [("","")]
    }
    
    func name(_ index: Int) -> String {
        return wishes[index].name
    }
    
    func thumbnail(_ index: Int) -> String {
        return wishes[index].thumbnail
    }
    
    func ext1(_ index: Int) -> String {
        return ""
    }
    
    func ext2(_ index: Int) -> String {
        return ""
    }
    
    func count() -> Int{
        return wishes.count
    }
    
    func modelName() -> String {
        return "Dummy Wish List"
    }
}

var selectedIndexModel = 0
