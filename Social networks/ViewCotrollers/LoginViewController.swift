//
//  LoginViewController.swift
//  Social networks
//
//  Created by timatika on 29.10.2021.
//

import UIKit

var userOne = User.init(login: "User", password: "Password", name: "Лев", surName: "Пакин", dateOfBirth: "02.04.2020", yearsOld: 1.5)

class LoginViewController: UIViewController {
    

    @IBOutlet var nameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTF.isSecureTextEntry = true
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        welcomeVC.user = userOne.name
//    }
    
    func checkUser(){

        let checkName = String(nameTF.text ?? "")
        let checkPassword = String(passwordTF.text ?? "")
        
        guard checkName == userOne.login && checkPassword == userOne.password  else {showAlert(title: "Invalid login or password", message: "Please, enter correct login and password"); return}
    }
    
    @IBAction func logInPressed() {
        
        checkUser()
    
    }
    
    
    @IBAction func forgotPressed(_ sender: UIButton) {
        
        sender.tag == 0
        ?showAlert(title: "Oops", message: "Your name is \(userOne.login)  😉")
        :showAlert(title: "Oops", message: "Your password is \(userOne.password)  😉")
        
    }
    

    
    
    @IBAction  func unwind(for unwindSegue: UIStoryboardSegue) {
        
        nameTF.text = ""
        passwordTF.text = ""
    }
    
    
}
// MARK: - Private Methods
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

//// MARK: - UITextFieldDelegate
//extension LoginViewController: UITextFieldDelegate {
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesBegan(touches, with: event)
//        view.endEditing(true)
//    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if textField == nameTF {
//            passwordTextField.becomeFirstResponder()
//        } else {
//            logInPressed()
//            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
//        }
//        return true
//    }
//}
