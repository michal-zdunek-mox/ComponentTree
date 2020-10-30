//
//  StackLevel.swift
//  ComponentTree
//
//  Created by michal.zdunek on 28/10/2020.
//

import UIKit

class StackLevel: UIStackView {
    let level: Int
    
    init(level: Int, display: Bool) {
        self.level = level
        super.init(frame: CGRect())
        if (display) {
            let label = LevelLabel(level: level)
            self.addArrangedSubview(label)
        }
        self.axis = .vertical
        self.alignment = .center
    }
    
    required init(coder: NSCoder) {
        self.level = 0
        super.init(coder: coder)
    }
}
