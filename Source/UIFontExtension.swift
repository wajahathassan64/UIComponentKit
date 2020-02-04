//
//  UIFont+Extension.swift
//  UIComponentsKit
//
//  Created by Wajahat Hassan on 04/02/2020.
//  Copyright © 2020 non. All rights reserved.
//

import UIKit

public enum AppTextStyle {
    case title1
    case title2
    case title3
    case large
    case regular
    case small
    case micro
}

public enum AppFontWeight: String {
    case ultraLight
    case thin
    case light
    case regular
    case medium
    case semibold
    case bold
    case heavy
    case black
}

extension AppFontWeight {
    fileprivate var systemFontWeight: UIFont.Weight {
        switch self {
        case .ultraLight:   return .ultraLight
        case .thin:         return .thin
        case .light:        return .light
        case .regular:      return .regular
        case .medium:       return .medium
        case .semibold:     return .semibold
        case .bold:         return .bold
        case .heavy:        return .heavy
        case .black:        return .black
        }
    }
}

public extension UIFont {
    
    static func appFont(forTextStyle style: AppTextStyle, weight: AppFontWeight = .regular) -> UIFont {
        switch style {
        case .title1:   return .appFont(ofSize: 28.0)
        case .title2:   return .appFont(ofSize: 24.0)
        case .title3:   return .appFont(ofSize: 21.0)
        case .large:    return .appFont(ofSize: 18.0)
        case .regular:  return .appFont(ofSize: 16.0)
        case .small:    return .appFont(ofSize: 14.0)
        case .micro:    return .appFont(ofSize: 12.0)
        }
    }
    
    static func appFont(ofSize size: CGFloat, weigth: AppFontWeight = .regular) -> UIFont {
        return .systemFont(ofSize: size, weight: weigth.systemFontWeight)
    }
    
    static var title1: UIFont {
        return appFont(forTextStyle: .title1)
    }
    
    static var title2: UIFont {
        return appFont(forTextStyle: .title2)
    }
    
    static var title3: UIFont {
        return appFont(forTextStyle: .title3)
    }
    
    static var large: UIFont {
        return appFont(forTextStyle: .large)
    }
    
    static var regular: UIFont {
        return appFont(forTextStyle: .regular)
    }
    
    static var small: UIFont {
        return appFont(forTextStyle: .small)
    }
    
    static var micro: UIFont {
        return appFont(forTextStyle: .micro)
    }
}
