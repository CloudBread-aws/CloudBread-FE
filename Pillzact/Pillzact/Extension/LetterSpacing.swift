//
//  LetterSpacing.swift
//  Pillzact
//
//  Created by Jini on 2024/02/10.
//

import UIKit

extension NSAttributedString {
    convenience init(text: String, letterSpacing: CGFloat) {
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute(.kern, value: letterSpacing, range: NSRange(location: 0, length: attributedString.length))
        self.init(attributedString: attributedString)
    }
}

///사용법
///let label = UILabel()
///label.attributedText = NSAttributedString(text: "Your Text", letterSpacing: -2.5)
///
///let textField = UITextField()
///textField.attributedText = NSAttributedString(text: "Your Text", letterSpacing: -2.5)
///
///let textView = UITextView()
///textView.attributedText = NSAttributedString(text: "Your Text", letterSpacing: -2.5)

