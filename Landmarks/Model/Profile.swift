//
//  Profile.swift
//  Landmarks
//
//  Created by Tenzin wangyal on 7/3/22.
//

import Foundation
import UIKit

struct Profile{
    var username: String
    var preferNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    static let `default` = Profile (username: "Tenzin")

enum Season: String, CaseIterable, Identifiable{
    case spring = "🌷"
    case summer = "🌞"
    case autumn = "🍂"
    case winter = "☃️"
    
    var id: String{rawValue}

}
}
