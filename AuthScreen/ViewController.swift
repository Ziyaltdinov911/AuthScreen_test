//
//  ViewController.swift
//  AuthScreen
//
//  Created by KAMA . on 23.02.2025.
//

import UIKit

class ViewController: UIViewController {
        
    lazy var emailLabel = createTextField(text: "Email", labelColor: .white, textColor: .gray, labelFrames: CGRect(x: 30, y: secondTextLabel.frame.maxY + 20, width: view.frame.width - 60, height: 50))
    
    lazy var passwordLabel = createTextField(text: "Password", labelColor: .white, textColor: .gray, labelFrames: CGRect(x: 30, y: emailLabel.frame.maxY + 10, width: view.frame.width - 60, height: 50))
    
    lazy var loginButton = createButton(text: "Войти", buttonColor: .white, textColor: UIColor(red: 8/255, green: 83/255, blue: 138/255, alpha: 1), btnFrames: CGRect(x: 30, y: passwordLabel.frame.maxY + 30, width: view.frame.width - 60, height: 50))
    
    lazy var signUpButton = createButton(text: "Региcтрация", buttonColor: .clear, textColor: .white, btnFrames: CGRect(x: 30, y: loginButton.frame.maxY + 5, width: view.frame.width - 60, height: 50))
    
    lazy var forgotPasswordButton = createButton(text: "Забыли пароль?", buttonColor: .clear, textColor: .white, btnFrames: CGRect(x: 30, y: view.frame.maxY - 100, width: view.frame.width - 60, height: 50))

    
    lazy var authorizationTextLabel: UILabel = {
        $0.text = "Авторизация"
        $0.textColor = .white
        $0.numberOfLines = 1
        $0.font = .systemFont(ofSize: 36, weight: .bold)
        
        $0.frame = CGRect(x: 30, y: 200, width: view.frame.width - 60, height: 50)

        return $0
    }(UILabel())
    
    lazy var secondTextLabel: UILabel = {
        $0.text = "Lorem ipsum dolor sit amet, consectetur adipisi ing elit, sed do eiusmod"
        $0.textColor = .white
        $0.numberOfLines = 2
        $0.font = .systemFont(ofSize: 16)
        $0.frame = CGRect(x: 30, y: authorizationTextLabel.frame.maxY + 5, width: view.frame.width - 60, height: 50)
        return $0
    }(UILabel())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 8/255, green: 83/255, blue: 138/255, alpha: 1)
        view.addSubview(authorizationTextLabel)
        view.addSubview(secondTextLabel)
        view.addSubview(emailLabel)
        view.addSubview(passwordLabel)
        view.addSubview(loginButton)
        view.addSubview(signUpButton)
        view.addSubview(forgotPasswordButton)
    }
    
    func createTextField(text: String, labelColor: UIColor, textColor: UIColor, labelFrames: CGRect) -> UITextField {
        let label = UITextField()
        label.backgroundColor = labelColor
        label.textColor = textColor
        label.text = text
        label.frame = labelFrames
        label.layer.cornerRadius = 20
        label.addPadding(padding: 10)
        label.clipsToBounds = true
        
        return label
    }
    
    func createButton(text: String, buttonColor: UIColor = .blue, textColor: UIColor, btnFrames: CGRect) -> UIButton {
        let btn = UIButton()
        btn.setTitle(text, for: .normal)
        btn.titleLabel?.font = .boldSystemFont(ofSize: 16)
        btn.backgroundColor = buttonColor
        btn.setTitleColor(textColor, for: .normal)
        btn.frame = btnFrames
        btn.layer.cornerRadius = 20
        btn.clipsToBounds = true
        
        return btn
    }

}

extension UITextField {
    func addPadding(padding: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
}

import SwiftUI
struct ViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ViewController {
        return ViewController()
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
    }
}

// PreviewProvider для SwiftUI
struct ViewControllerPreview: PreviewProvider {
    static var previews: some View {
        ViewControllerRepresentable()
//            .previewLayout(.sizeThatFits)
    }
}


