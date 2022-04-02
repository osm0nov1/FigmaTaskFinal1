//
//  ViewController.swift
//  FigmaTask
//
//  Created by Rashit Osmonov on 12/3/22.
//
import Foundation
import UIKit
import SnapKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    private lazy var leftButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Vector"), for: .normal)
        view.tintColor = .black
        view.backgroundColor = .white
        return view
    }()
    private lazy var yourProfileLebel: UILabel = {
        let view = UILabel()
        view.text = "Your Profile"
        view.font = UIFont.systemFont(ofSize: 17)
        view.textColor = .black
        return view
    }()
    private lazy var changeAvatar: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Change Avatar")
        return view
    }()
    private lazy var firstNameFild: UITextField = {
        let view = UITextField()
        view.placeholder = "First Name (Required)"
        view.font = UIFont.systemFont(ofSize: 14)
        view.layer.backgroundColor = UIColor(red: 0.969, green: 0.969, blue: 0.988, alpha: 1).cgColor
        view.layer.cornerRadius = 4
        view.layer.sublayerTransform = CATransform3DMakeTranslation(8, 0, 0);
        view.contentMode = .scaleAspectFit
        view.delegate = self
        return view
    }()
    private lazy var lastNameFild: UITextField = {
        let view = UITextField()
        view.placeholder = "Last Name (Optional)"
        view.font = UIFont.systemFont(ofSize: 14)
        view.layer.backgroundColor = UIColor(red: 0.969, green: 0.969, blue: 0.988, alpha: 1).cgColor
        view.layer.cornerRadius = 4
        view.layer.sublayerTransform = CATransform3DMakeTranslation(8, 0, 0);
        view.contentMode = .scaleAspectFit
        view.delegate = self
        return view
    }()
    private lazy var saveButton: UIButton = {
        let view = UIButton()
        view.setTitle("Save", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        view.layer.backgroundColor = UIColor(red: 0, green: 0.176, blue: 0.89, alpha: 1).cgColor
        view.layer.cornerRadius = 26
        view.addTarget(self, action: #selector(clickSave(view:)), for: .touchUpInside)
        return view
    }()
    private lazy var topbarView: UIView = {
        let view = UIView()
        return view
    }()
    @objc func clickSave(view: UIButton) {
        
        guard let name = firstNameFild.self.text else { return }
        guard let lastName = lastNameFild.self.text else { return }
        let isValidateName = self.validation.validateName(name: name)
        if (isValidateName == false) {
            print("Incorrect Name")
            
            let alertController = UIAlertController(title: "Error", message: "Terminate the text fields. \n Enter your first and last name!", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .cancel)
            alertController.addAction(alertAction)
            self.present(alertController, animated: true)
            
            return
        }
        
        let isValidateLast2 = self.validation.validateLast(lastNAme: lastName)
        if (isValidateLast2 == false){
            print("Incorrect LastName")
            
            let alertController = UIAlertController(title: "Error", message: "Terminate the text fields. \n Enter your first and last name!", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .cancel)
            alertController.addAction(alertAction)
            self.present(alertController, animated: true)
            
            return
        }
        navigationController?.pushViewController(Setings(), animated: true)
        UserDefaultsService.shared.nameOne = firstNameFild.text?.trimmingCharacters(in: .whitespaces) ?? ""
        UserDefaultsService.shared.nameTwo = lastNameFild.text?.trimmingCharacters(in: .whitespaces) ?? ""
    }
    
    @objc private func keybord() {
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    @objc  func hideKeyboard() {
        self.view.endEditing(false)
    }
    @objc private func keyBoardWillShow(notification: NSNotification) {
        guard let userInfo = notification.userInfo,
              let endFrame =
                (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?
            .cgRectValue else {return}
        let keyboardHeight = endFrame.size.height
        UIView.animate(withDuration: 0.3) {
            self.saveButton.snp.remakeConstraints { make in
                make.left.equalToSuperview().offset(24)
                make.right.equalToSuperview().offset(-24)
                make.height.equalTo(52)
                make.bottom.equalToSuperview().offset(-keyboardHeight - 32)
            }
        }
        func openKeyBoardEvent(keyBoardHeight: CGFloat) {
            UIView.animate(withDuration: 1) {
                self.saveButton.transform = CGAffineTransform(translationX: 0, y: keyBoardHeight * -1 + -16)
            }
        }
    }
    @objc private func keyBoardWillHide(notification: NSNotification) {
        saveButton.snp.remakeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
            make.height.equalTo(52)
            make.bottom.equalToSuperview().offset(-54)
        }
        
    }
    
    var validation = Validation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameFild.text! = UserDefaultsService.shared.nameOne
        lastNameFild.text! = UserDefaultsService.shared.nameTwo
        keybord()
        
        view.addSubview(topbarView)
        topbarView.snp.makeConstraints { make in
            make.top.equalTo(view.safeArea.top)
            make.left.equalToSuperview()
            make.right.equalTo(view.safeArea.right)
            make.height.equalTo(60)
        }
        view.addSubview(leftButton)
        leftButton.snp.makeConstraints { make in
            make.top.equalTo(topbarView.snp.top).offset(10)
            make.left.equalToSuperview().offset(24)
        }
        view.addSubview(yourProfileLebel)
        yourProfileLebel.snp.makeConstraints { make in
            make.top.equalTo(topbarView.snp.top).offset(10)
            make.left.equalTo(leftButton.snp.right).offset(16)
        }
        view.addSubview(changeAvatar)
        changeAvatar.snp.makeConstraints { make in
            make.top.equalTo(topbarView.snp.bottom).offset(59)
            make.centerX.equalToSuperview()
        }
        view.addSubview(firstNameFild)
        firstNameFild.snp.makeConstraints { make in
            make.top.equalTo(changeAvatar.snp.bottom).offset(32)
            make.left.right.equalToSuperview().inset(24)
            make.height.equalTo(36)
        }
        view.addSubview(lastNameFild)
        lastNameFild.snp.makeConstraints { make in
            make.top.equalTo(firstNameFild.snp.bottom).offset(12)
            make.left.right.equalToSuperview().inset(24)
            make.width.height.equalTo(36)
        }
        view.addSubview(saveButton)
        saveButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
            make.height.equalTo(52)
            make.bottom.equalToSuperview().offset(-54)
        }
    }
}
extension ViewController: UITextViewDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == firstNameFild {
            firstNameFild.resignFirstResponder()
            lastNameFild.becomeFirstResponder()
        } else {
            view.endEditing(true)
        }
        return true
    }
}
