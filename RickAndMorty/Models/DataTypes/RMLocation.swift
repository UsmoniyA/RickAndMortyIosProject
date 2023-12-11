//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Abdulaziz Usmoniy on 04/12/23.
//

import Foundation


struct RMLocation: Codable
{
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
