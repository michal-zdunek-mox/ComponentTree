//
//  LevelLabel.swift
//  ComponentTree
//
//  Created by michal.zdunek on 28/10/2020.
//

import UIKit

class LevelLabel: UILabel {
    let level: Int
    
    init(level: Int) {
        self.level = level
        
        super.init(frame: CGRect())

        self.text = "Level \(level)"
        self.font = UIFont.boldSystemFont(ofSize: 10)
    }

    required init?(coder: NSCoder) {
        level = 0
        super.init(coder: coder)
    }
    
    override func layerWillDraw(_ layer: CALayer) {
        print("Drawing level \(level)")
    }
    
    override func draw(_ rect: CGRect) {
        print("Drawing label \(level)")
        super.draw(rect)
        print("Drawn label \(level)")
    }
}
