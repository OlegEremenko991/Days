//
//  ItemRouter.swift
//  Days 2.1
//
//  Created by Олег Еременко on 11.07.2020.
//  Copyright © 2020 Oleg Eremenko. All rights reserved.
//

import UIKit

final class ItemRouter: ItemRouterProtocol {
    
// MARK: Public properties
    
    weak var viewController: ItemViewController!
    
// MARK: Init
    
    init(viewController: ItemViewController) {
        self.viewController = viewController
    }

// MARK: Protocol methods
    
    func closeCurrentViewController() {
        viewController.navigationController?.popToRootViewController(animated: true)
    }
    
}
