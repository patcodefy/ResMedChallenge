//
//  Router.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import UIKit

class Router: Routerable {

    static var instance = Router()

    let mainStoryboard  : MainRouterable

    init() {
        mainStoryboard = MainRouter()
    }
}
