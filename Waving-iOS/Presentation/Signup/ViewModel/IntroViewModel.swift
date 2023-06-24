//
//  IntroViewModel.swift
//  Waving-iOS
//
//  Created by Jane Choi on 2023/06/03.
//

import Foundation
import Combine

enum IntroRoute {
    case signupView
    case loginView
}

final class IntroViewModel {
    
    var route: AnyPublisher<IntroRoute, Never> {
        self.sendRoute.eraseToAnyPublisher()
    }
    
    var sendRoute: PassthroughSubject<IntroRoute, Never> = .init()
    
    func signup() {
        NetworkManager.shared.userAuthentication()
//        sendRoute.send(.signupView)
    }
    
    func login() {
        NetworkManager.shared.userJoin()
//        sendRoute.send(.loginView)
    }
}
