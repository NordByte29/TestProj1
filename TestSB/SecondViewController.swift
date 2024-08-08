//
//  SecondViewController.swift
//  TestSB
//
//  Created by Ильяс Халаков on 08.08.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        let label = UILabel(frame: .init(origin: .init(x: 100, y: 100),size: .init(width: 300, height: 300)))
        view.addSubview(label)
        label.text = "STARIY HOOY"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 30)
    }
}
