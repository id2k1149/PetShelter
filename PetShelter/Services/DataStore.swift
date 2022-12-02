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
            animal: "dog",
            breed: "N/A",
            info: "N/A",
            age: 1,
            inoculations: ["N/A"],
            deseases: ["N/A"],
            parasites: ["N/A"]),
        Pet(image: "katrine",
            name: "Katrine",
            animal: "cat",
            breed: "N/A",
            info: "N/A",
            age: 1,
            inoculations: ["N/A"],
            deseases: ["N/A"],
            parasites: ["N/A"]),
        Pet(image: "scarlett",
            name: "Scarlett",
            animal: "dog",
            breed: "N/A",
            info: "N/A",
            age: 1,
            inoculations: ["N/A"],
            deseases: ["N/A"],
            parasites: ["N/A"]),
        Pet(image: "timmy",
            name: "Timmy",
            animal: "cat",
            breed: "N/A",
            info: "N/A",
            age: 1,
            inoculations: ["N/A"],
            deseases: ["N/A"],
            parasites: ["N/A"]),
        Pet(image: "woody",
            name: "Woody",
            animal: "dog",
            breed: "N/A",
            info: "N/A",
            age: 1,
            inoculations: ["N/A"],
            deseases: ["N/A"],
            parasites: ["N/A"]),
    ]
    
    private init() {}
    
}
