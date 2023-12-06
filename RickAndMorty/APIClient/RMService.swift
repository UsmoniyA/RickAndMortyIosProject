//
//  RMService.swift
//  RickAndMorty
//
//  Created by Abdulaziz Usmoniy on 05/12/23.
//

import Foundation

final class RMService{
    static let sharerd = RMService()
    
    private init(){}
    
    public func execute<T:Codable>(
        _ request: RMRequest,
        expecting type:T.Type,
        complition:@escaping
        (Result<String,Error>) -> Void){
        
        
    }
    
    
}
