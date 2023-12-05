//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Abdulaziz Usmoniy on 04/12/23.
//

import UIKit

final class RMTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTabs()
    }

    
    private func setUpTabs(){
        
        let characterVc = RMCharacterViewController()
        let episodeVc = RMEpisodeViewController()
        let locationsVc  = RMLocationViewController()
        let settingsVc = RMSettingsViewController()
        
        characterVc.navigationItem.largeTitleDisplayMode = .automatic
        episodeVc.navigationItem.largeTitleDisplayMode = .automatic
        locationsVc.navigationItem.largeTitleDisplayMode = .automatic
        settingsVc.navigationItem.largeTitleDisplayMode = .automatic
        
        
        let nav1 = UINavigationController(rootViewController: characterVc)
        let nav2 = UINavigationController(rootViewController: episodeVc)
        let nav3 = UINavigationController(rootViewController: locationsVc)
        let nav4 = UINavigationController(rootViewController: settingsVc)
        
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "tv"), tag:3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [nav1,nav2,nav3,nav4]{
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1,nav2,nav3,nav4], animated: true)
        
    }

}

