//
//  Color.swift
//  Pillzact
//
//  Created by Jini on 2024/02/10.
//

import UIKit

extension UIColor {
    
    convenience init(hexCode: String, alpha: CGFloat = 1.0) {
        var hexFormatted: String = hexCode.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }
        
        assert(hexFormatted.count == 6, "Invalid hex code used.")
        
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)
        
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: alpha)
    }
    
    
    static let pzMain = UIColor(hexCode: "#FFB53C") //메인색
    static let pzLightMain = UIColor(hexCode: "#F3B95F") //메인색보다 살짝 연한색
    static let pzBlackOp = UIColor(hexCode: "#000000", alpha: 0.75) //보통 회원가입시 안내문구
    static let pzRed = UIColor(hexCode: "#BF0606") //빨강 경고 문구
    static let pzGray = UIColor(hexCode: "#CBCCCE") //보통 버튼색
    static let pzLightGray1 = UIColor(hexCode: "#D9D9D9") //탭바 비활성색
    static let pzLightGray2 = UIColor(hexCode: "#F3F4F8") //보통 텍스트필드 배경색
    static let pzNeonYellow = UIColor(hexCode: "#FBF5C1") //필작이 색
    
    
    
}
