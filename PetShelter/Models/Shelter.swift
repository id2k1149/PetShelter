//
//  Shelter.swift
//  PetShelter
//
//  Created by Max Franz Immelmann on 11/28/22.
//

final class Shelter {
    let name: String
    let email: String
    let phone: String
    
    let address1: String
    let address2: String
    
    init(name: String,
         email: String,
         phone: String,
         address1: String,
         address2: String) {
        self.name = name
        self.email = email
        self.phone = phone
        self.address1 = address1
        self.address2 = address2
    }
    
}
