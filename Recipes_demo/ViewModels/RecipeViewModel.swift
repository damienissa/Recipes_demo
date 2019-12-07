//
//  RecipeViewModel.swift
//  Recipes_demo
//
//  Created by Dima Virych on 07.12.2019.
//  Copyright © 2019 Virych. All rights reserved.
//

import Foundation

class RecipeViewModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    @Published var isLoading = false
    
    private let service = RecipeService()
    
    
    init() {
        
        loadData()
    }

    
    private func loadData() {
        
        isLoading = true
        
        service.getRecipes { [weak self] result in
            
            DispatchQueue.main.async {
                
                self?.isLoading = false
             
                switch result {
                case .failure(let error):
                    print(error.localizedDescription)
                case .success(let recipes):
                    self?.recipes = recipes
                }
            }
        }
    }
}
