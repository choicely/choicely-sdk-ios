//
//  ChoicelyModules.swift
//  choicely-sdk-ios
//
//  Created by Oleksandr Kryvodub on 28.8.2025.
//

import Foundation
import ChoicelyCore
import ChoicelyFirebase
import ChoicelyMap
import ChoicelyShop
import ChoicelyAd

public final class ChoicelyModules {
    
    static func initialize() {
        let _ = ChoicelyMapViewController()
        let _ = ChoicelyProfileViewController()
        let _ = ChoicelyShopController()
    }
    
    private init() {}
}


