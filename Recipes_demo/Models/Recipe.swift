//
//  Recipe.swift
//  Recipes_demo
//
//  Created by Dima Virych on 07.12.2019.
//  Copyright © 2019 Virych. All rights reserved.
//

import Foundation

struct RecipesResponse: Codable {
    
    let title: String
    let version: Double
    let href: String
    let results: [Recipe]
}

struct Recipe: Codable {
    
    let title, href, ingredients, thumbnail: String
    
    var detail: URL {
        URL(string: href)!
    }
    
    var thumb: URL {
        URL(string: thumbnail)!
    }
}
