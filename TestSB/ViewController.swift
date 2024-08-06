//
//  ViewController.swift
//  TestSB
//
//  Created by Ильяс Халаков on 22.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @objc
       func loginButtonTap() {
   print("кнопка нажата")
           let SecondViewController = SecondViewController()
   }
    let imageView = UIImageView()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        
        //        textField.frame = CGRect(x: 80, y: 150, width: 20, height: 10)
        //        self.view.addSubview(textField)
        
        //        imageView.frame = CGRect(x: 135, y:300, width: 15, height: 15)
        //        self.view.addSubview(imageView)
        
        //        let button = UIButton()
        //        button.backgroundColor = .brown
        ////        button.frame = CGRect(x: 235, y: 250, width: 50, height: 50)
        //        button.layer.cornerRadius = 25
        //        self.view.addSubview(button)
        setupUI()
        //        button.addTarget(self, action: #selector(dButton), for: .touchUpInside)
    }
    
    @objc func dButton() {
        let name = textField2.text!
        let image = UIImage(named: "\(name)")
        imageView.image = image
    }
    
    let myView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let myView2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let myLebel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Login"
        label.textAlignment = .center
        return label
    }()
    
    let myLebel2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Password"
        label.textAlignment = .center
        return label
    }()
    
    let textField2 : UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "MICRO"
        textField.textColor = .green
        return textField
    }()
    
    let textField3 : UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "PENIS"
        textField.textColor = .green
        return textField
    }()
    
    let bottomButton : UIButton = {
        let button = UIButton()
        button.setTitle("SOSI", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 5
        button.layer.masksToBounds = true
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.addTarget(self, action: #selector(loginButtonTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private func setupUI() {
        view.backgroundColor = UIColor .white
        view.addSubview(myLebel)
        view.addSubview(myLebel2)
        view.addSubview(textField2)
        view.addSubview(textField3)
        view.addSubview(bottomButton)
       
        NSLayoutConstraint.activate([
            myLebel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            myLebel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            myLebel2.topAnchor.constraint(equalTo: myLebel.bottomAnchor, constant: 20),
            myLebel2.leadingAnchor.constraint(equalTo: myLebel.leadingAnchor, constant: 0),
            textField2.topAnchor.constraint(equalTo: myLebel.topAnchor),
            textField2.leadingAnchor.constraint(equalTo: myLebel.trailingAnchor, constant: 10),
            textField3.topAnchor.constraint(equalTo: myLebel2.topAnchor),
            textField3.leadingAnchor.constraint(equalTo: myLebel2.trailingAnchor, constant: 10),
            bottomButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            bottomButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100),
            bottomButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100)

        ])
    }
}
    
