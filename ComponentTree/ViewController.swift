//
//  ViewController.swift
//  ComponentTree
//
//  Created by michal.zdunek on 27/10/2020.
//

import UIKit

class ViewController: UIViewController {
    let stack = UIStackView()

    override func loadView() {
        stack.axis = .vertical
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
        var prev = stack
        for lvl in 1...300 {
            let next = StackLevel(level: lvl, display: lvl % 10 == 0)
            prev.addArrangedSubview(next)
            prev = next
        }
        view = UIView()
        view.backgroundColor = UIColor.white
        view.addSubview(stack)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        let guide = view.safeAreaLayoutGuide
        stack.topAnchor.constraint(equalTo: guide.topAnchor, constant: 0).isActive = true
        stack.leftAnchor.constraint(equalTo: guide.leftAnchor, constant: 0).isActive = true
        stack.rightAnchor.constraint(equalTo: guide.rightAnchor, constant: 0).isActive = true
    }
}

