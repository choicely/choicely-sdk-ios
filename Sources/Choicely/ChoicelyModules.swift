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

private final class ChoicelyModules {
    private init() {}
    
    static public func initialize() {
        let _ = ChoicelyMapViewController()
        let _ = ChoicelyProfileViewController()
        let _ = ChoicelyShopController()
    }
}
