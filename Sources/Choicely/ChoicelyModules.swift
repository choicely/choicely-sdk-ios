//
//  ChoicelyModules.swift
//  choicely-sdk-ios
//
//  Created by Oleksandr Kryvodub on 28.8.2025.
//

#if canImport(ChoicelyFirebase)
    import ChoicelyFirebase

    private func initializeFirebase() {
        let _ = ChoicelyProfileViewController()
    }
#endif

#if canImport(ChoicelyMap)
    import ChoicelyMap

    private func initializeMap() {
        let _ = ChoicelyMapViewController()
    }
#endif

#if canImport(ChoicelyShop)
    import ChoicelyShop

    private func initializeShop() {
        let _ = ChoicelyShopController()
    }
#endif
