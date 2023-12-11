//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Abdulaziz Usmoniy on 04/12/23.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        
        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print(String(model.info.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}

