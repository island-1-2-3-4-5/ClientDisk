//
//  LoginViewControllerDelegate.swift
//  MyCloudDisk
//
//  Created by Roman on 15.09.2020.
//  Copyright © 2020 Roman Monakhov. All rights reserved.
//

import Foundation
import UIKit

protocol LoginViewControllerDelegate: class {
    func handleTokenChanged(token: String)
}


protocol FileTableViewCellDelegate: class {
    func loadImage(stringUrl: String, completion: @escaping ((UIImage?) -> Void))
}


extension URL {
    var typeIdentifier: String? {
        return (try? resourceValues(forKeys: [.typeIdentifierKey]))?.typeIdentifier
    }
    var localizedName: String? {
        return (try? resourceValues(forKeys: [.localizedNameKey]))?.localizedName
    }
}
