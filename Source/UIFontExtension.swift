//    MIT License
//
//    Copyright (c) 2020 Wajahat Hassan <wajahathassan64@gmail.com>
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in
//    all copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//    THE SOFTWARE.

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
