//
//  Font.swift
//  Pillzact
//
//  Created by Jini on 2024/02/10.
//

import UIKit

extension UIFont {
    //bold (weight: 700)
    static func B28() -> UIFont {
        return UIFont(name: "Pretendard-Bold", size: 28) ?? UIFont.systemFont(ofSize: 28, weight: .bold)
    }
    
    static func B24() -> UIFont {
        return UIFont(name: "Pretendard-Bold", size: 24) ?? UIFont.systemFont(ofSize: 24, weight: .bold)
    }
    
    
    //semibold (weight: 600)
    static func SB32() -> UIFont {
        return UIFont(name: "Pretendard-SemiBold", size: 32) ?? UIFont.systemFont(ofSize: 32, weight: .semibold)
    }
    
    static func SB24() -> UIFont {
        return UIFont(name: "Pretendard-SemiBold", size: 24) ?? UIFont.systemFont(ofSize: 24, weight: .semibold)
    }
    
    static func SB18() -> UIFont {
        return UIFont(name: "Pretendard-SemiBold", size: 18) ?? UIFont.systemFont(ofSize: 18, weight: .semibold)
    }
    
    //medium (weight: 500)
    
    
    //regular (weight: 400)
    static func R24() -> UIFont {
        return UIFont(name: "Pretendard-Regular", size: 24) ?? UIFont.systemFont(ofSize: 24, weight: .regular)
    }
    
    static func R20() -> UIFont {
        return UIFont(name: "Pretendard-Regular", size: 20) ?? UIFont.systemFont(ofSize: 20, weight: .regular)
    }
    
    static func R18() -> UIFont {
        return UIFont(name: "Pretendard-Regular", size: 18) ?? UIFont.systemFont(ofSize: 18, weight: .regular)
    }
    
    static func R16() -> UIFont {
        return UIFont(name: "Pretendard-Regular", size: 16) ?? UIFont.systemFont(ofSize: 16, weight: .regular)
    }
    
    static func R14() -> UIFont {
        return UIFont(name: "Pretendard-Regular", size: 14) ?? UIFont.systemFont(ofSize: 14, weight: .regular)
    }
    
    
}
