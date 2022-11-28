//
//  Pet.swift
//  PetShelter
//
//  Created by Max Franz Immelmann on 11/28/22.
//

final class Pet {
    let name: String
    let animal: String
    let breed: String
    let info: String
    let age: Int
    let inoculations: [String]
    let deseases: [String]
    let parasites: [String]
    
    init(name: String,
         animal: String,
         breed: String,
         info: String,
         age: Int,
         inoculations: [String],
         deseases: [String],
         parasites: [String]) {
        self.name = name
        self.animal = animal
        self.breed = breed
        self.info = info
        self.age = age
        self.inoculations = inoculations
        self.deseases = deseases
        self.parasites = parasites
    }
}
