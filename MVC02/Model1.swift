//
//  File.swift
//  MVC02
//
//  Created by Ignazio Finizio on 20/01/2017.
//  Copyright © 2017 Ignazio Finizio. All rights reserved.
//

class Model1: Model {
    override init(){
        super.init()
        self.nomi = ["a","b","c"]
    }
    
    override func modelName() -> String {
        return "Model 1"
    }
}
