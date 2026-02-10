//
//  ChoicelyModules.swift
//  choicely-sdk-ios
//
//  Created by Oleksandr Kryvodub on 28.8.2025.
//

#if canImport(ChoicelyFirebase)
    import ChoicelyFirebase

    public func initializeFirebase() {
        let _ = ChoicelyProfileViewController()
        let _ = ChoicelyStudioAnalyticsObserver()
    }
#endif

#if canImport(ChoicelyMap)
    import ChoicelyMap

    public func initializeMap() {
        let _ = ChoicelyMapViewController()
    }
#endif

#if canImport(ChoicelyShop)
    import ChoicelyShop

    public func initializeShop() {
        let _ = ChoicelyShopController()
    }
#endif

#if canImport(ChoicelyReactNative)
    import ChoicelyReactNative

    public func initializeReactNative() {
        let _ = ChoicelyReactNativeViewController()
    }
#endif
