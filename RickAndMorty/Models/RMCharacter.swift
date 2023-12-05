//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Abdulaziz Usmoniy on 04/12/23.
//

import Foundation

struct RMCharacter : Codable{
          let id: Int
          let name: String
          let status: RMCharacterStatus
          let species: String
          let type: String
          let gender: RMCharacterGender
          let origin:RMOrigin
          let location: RMSingleLocation
          let image : String
          let episode :[String]
          let url: String
          let created : String
    
}

enum RMCharacterStatus : String,Codable{
    case  alive  = "Alive"
    case dead = "Dead"
    case `unknown` = "unknow"
    
}
