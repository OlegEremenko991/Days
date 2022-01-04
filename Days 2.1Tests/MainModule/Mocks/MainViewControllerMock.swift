//
//  MainViewControllerMock.swift
//  Days 2.1Tests
//
//  Created by Олег Еременко on 10.10.2021.
//  Copyright © 2021 Oleg Eremenko. All rights reserved.
//

import UIKit
@testable import Days_2_1

final class MainViewControllerMock {
    var reloadComplete = false

    var testSegue: UIStoryboardSegue {
        let sourceVC = MainViewController()
        let destinationVC = ItemViewController()
        return .init(
            identifier: nil,
            source: sourceVC,
            destination: destinationVC
        )
    }
}

extension MainViewControllerMock: MainViewControllerProtocol {
    func setItemData(itemName: String, itemDate: Date) {}

    func reload() {
        reloadComplete.toggle()
    }
}