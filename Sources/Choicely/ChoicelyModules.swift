//
//  ChoicelyModules.swift
//  choicely-sdk-ios
//
//  Created by Oleksandr Kryvodub on 28.8.2025.
//

#if canImport(ChoicelyFirebase)
    import ChoicelyFirebase

    private func initializeModule() {
        let _ = ChoicelyProfileViewController()
    }
#elseif canImport(ChoicelyMap)
    import ChoicelyMap

    private func initializeModule() {
        let _ = ChoicelyMapViewController()
    }
#elseif canImport(ChoicelyShop)
    import ChoicelyShop

    private func initializeModule() {
        let _ = ChoicelyShopController()
    }
#endif
