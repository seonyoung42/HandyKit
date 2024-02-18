//
//  HandyKitLabel.swift
//  HandyKit
//
//  Created by 장선영 on 2024/02/18.
//

import UIKit

public class HandyKitLabel: UILabel {
    
    public init(text: String, textColor: UIColor, font: UIFont) {
        super.init(frame: .zero)
        
        self.text = text
        self.textColor = textColor
        self.font = font
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
