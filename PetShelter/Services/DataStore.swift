//
//  DataStore.swift
//  PetShelter
//
//  Created by Max Franz Immelmann on 11/26/22.
//

final class DataStore {
    static let shared = DataStore()
    
    let pets = [
        Pet(image: "freddie",
            name: "Freddie",
            animal: "cat",
            breed: "N/A",
            info: "N/A",
            age: 2,
            inoculations: ["N/A"],
            deseases: ["N/A"],
            parasites: ["N/A"]),
        Pet(image: "jennifer",
            name: "Jennifer",
            animal: "dat",
            breed: "N/A",
            info: "N/A",
            age: 1,
            inoculations: ["N/A"],
            deseases: ["N/A"],
            parasites: ["N/A"]),
        
        
    ]
    
    private init() {}
    
}
