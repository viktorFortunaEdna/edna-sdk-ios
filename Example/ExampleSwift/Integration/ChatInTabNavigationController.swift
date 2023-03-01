//
//  ChatInTabNavigationController.swift
//  ExampleSwift
//
//  Created by Vitaliy Kuzmenko on 07/08/2019.
//  Copyright © 2019 Threads. All rights reserved.
//

import UIKit
import Threads

class ChatInTabNavigationController: UINavigationController {
    
    var design: Design = .default

    override func viewDidLoad() {
        super.viewDidLoad()

        self.viewControllers = [self.getChatViewController()]
    }
    
    func getAttributes() -> THRAttributes {
        switch design {
        case .default:
            return AttributesHelper.getDefaultAttributes()
        case .alternative:
            return AttributesHelper.getAltAttributes()
        }
    }
    
    func getChatViewController() -> UIViewController {
        let attributes = getAttributes()
        let chatViewController = Threads.threads().chatViewController(with: attributes)
        return chatViewController
    }

}
