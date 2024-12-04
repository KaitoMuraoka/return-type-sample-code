//
//  ViewController.swift
//  SampleUIKit
//
//  Created by 村岡海人 on 2024/12/04.
//

import UIKit

final class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Create text fields with different return key types
        let defaultReturnTypeTextField = createTextField(placeholder: "Default Return Key", returnKeyType: .default, yPosition: 100)
        let goReturnTypeTextField = createTextField(placeholder: "Go Return Key", returnKeyType: .go, yPosition: 160)
        let googleReturnTypeTextField = createTextField(placeholder: "Google Return Key", returnKeyType: .google, yPosition: 220)
        let joinReturnTypeTextField = createTextField(placeholder: "Join Return Key", returnKeyType: .join, yPosition: 280)
        let nextReturnTypeTextField = createTextField(placeholder: "Next Return Key", returnKeyType: .next, yPosition: 340)
        let routeReturnTypeTextField = createTextField(placeholder: "Route Return Key", returnKeyType: .route, yPosition: 400)
        let searchReturnTypeTextField = createTextField(placeholder: "Search Return Key", returnKeyType: .search, yPosition: 460)
        let sendReturnTypeTextField = createTextField(placeholder: "Send Return Key", returnKeyType: .send, yPosition: 520)
        let yahooReturnTypeTextField = createTextField(placeholder: "Yahoo Return Key", returnKeyType: .yahoo, yPosition: 580)
        let doneReturnTypeTextField = createTextField(placeholder: "Done Return Key", returnKeyType: .done, yPosition: 640)
        let emergencyCallReturnTypeTextField = createTextField(placeholder: "EmergencyCall Return Key", returnKeyType: .emergencyCall, yPosition: 700)
        let continueReturnTypeTextField = createTextField(placeholder: "Continue Return Key", returnKeyType: .continue, yPosition: 760)

        // Add text fields to the view
        view.addSubview(defaultReturnTypeTextField)
        view.addSubview(goReturnTypeTextField)
        view.addSubview(googleReturnTypeTextField)
        view.addSubview(joinReturnTypeTextField)
        view.addSubview(nextReturnTypeTextField)
        view.addSubview(routeReturnTypeTextField)
        view.addSubview(searchReturnTypeTextField)
        view.addSubview(sendReturnTypeTextField)
        view.addSubview(yahooReturnTypeTextField)
        view.addSubview(doneReturnTypeTextField)
        view.addSubview(emergencyCallReturnTypeTextField)
        view.addSubview(continueReturnTypeTextField)
        
        setupHideKeyboard()
    }
    
    
    private func createTextField(placeholder: String, returnKeyType: UIReturnKeyType, yPosition: CGFloat) -> UITextField {
        let textField = UITextField()
        textField.frame = CGRect(x: 20, y: yPosition, width: view.frame.width - 40, height: 40)
        textField.placeholder = placeholder
        textField.borderStyle = .roundedRect
        // Apple Developer Document : https://developer.apple.com/documentation/uikit/uitextinputtraits/keyboardtype
        textField.returnKeyType = returnKeyType
        textField.delegate = self
        return textField
    }
    
    private func setupHideKeyboard() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }
}

// Conform to UITextFieldDelegate to handle return key actions
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // Dismiss keyboard when return key is pressed
        return true
    }
}
