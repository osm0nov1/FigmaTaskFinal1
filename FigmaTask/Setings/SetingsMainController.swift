//
//  registerController.swift
//  FigmaTask
//
//  Created by Rashit Osmonov on 17/3/22.
//

import Foundation
import UIKit
import SnapKit

class Setings: UIViewController{
    private lazy var moreLebel: UILabel = {
        let view = UILabel()
        view.text = "More"
        view.font = UIFont.systemFont(ofSize: 17)
        view.textColor = .black
        return view
    }()
    private lazy var viewSetings: UIView = {
        let view = UIView()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(clickProfile(sender:)))
        view.addGestureRecognizer(tapGesture)
        return view
    }()
    private lazy var profile: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Frame 3291"), for: .normal)
        view.addTarget(self, action: #selector(clickAccoun(view:)), for: .touchUpInside)
        return view
    }()
    private lazy var nameFirstLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Rashit Osmonov"
        view.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return view
    }()
//    private lazy var nameFirstLebel2:  UILabel = {
//        let view = UILabel()
//        view.textColor = .black
//        view.text = "Osmonov"
//        view.font = UIFont.systemFont(ofSize: 14, weight: .medium)
//        return view
//    }()
    private lazy var numberLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .gray
        view.text = "+996 773 92 97 50"
        view.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        return view
    }()
    private lazy var rigthButton: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    private lazy var accountSetings: UIView = {
        let view = UIView()
        return view
    }()
    private lazy var acountButton: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-1"), for: .normal)
        return view
    }()
    private lazy var acountLebel2:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Account"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var acountButtonRigth: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    private lazy var chatsSetings: UIView = {
        let view = UIView()
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(clickSetingsChat(sender:)))
        return view
    }()
    private lazy var chats: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Vector-2"), for: .normal)
        view.tintColor = .black
        view.backgroundColor = .white
        return view
    }()
    private lazy var chatsLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Chats"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var chatsButtonRigth: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    private lazy var appereanceSetings: UIView = {
        let view = UIView()
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(clickSetingsAppereance(sender:)))
        return view
    }()
    private lazy var appereanceButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Vector-4"), for: .normal)
        view.tintColor = .black
        view.backgroundColor = .white
        return view
    }()
    private lazy var appereanceLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Appereance"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var appereanceButtonRigth: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    private lazy var notificationSetings: UIView = {
        let view = UIView()
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(clickSetingsNotification(sender:)))
        return view
    }()
    private lazy var notificationButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Vector-3"), for: .normal)
        view.tintColor = .black
        view.backgroundColor = .white
        
        return view
    }()
    private lazy var notificationLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Notification"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var notificationButtonRigth: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    private lazy var privacySetings: UIView = {
        let view = UIView()
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(clickSetingsPrivacy(sender:)))
        return view
    }()
    
    private lazy var privacyButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Vector-5"), for: .normal)
        view.tintColor = .black
        view.backgroundColor = .white
        
        return view
    }()
    private lazy var privacyLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Privacy"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var privacyButtonRigth: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    private lazy var dataUsageSetings: UIView = {
        let view = UIView()
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(clickSetingsDataUsage(sender:)))
        return view
    }()
    private lazy var dataUsageButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Vector-6"), for: .normal)
        view.tintColor = .black
        view.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        view.backgroundColor = .white
        
        return view
    }()
    private lazy var dataUsageLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Data Usage"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var dataUsageButtonRigth: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    private lazy var viewStroke: UILabel = {
        let view = UILabel()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(red: 0.929, green: 0.929, blue: 0.929, alpha: 1).cgColor
        return view
        
    }()
    private lazy var helpSetings: UIView = {
        let view = UIView()
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(clickSetingsHelp(sender:)))
        return view
    }()
    private lazy var helpButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Vector-8"), for: .normal)
        view.tintColor = .black
        view.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        view.backgroundColor = .white
        return view
    }()
    private lazy var helpLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Help"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var helpButtonRigth: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    private lazy var inviteSetings: UIView = {
        let view = UIView()
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(clickSetingsInitiv(sender:)))
        return view
    }()
    private lazy var inviteButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "Vector-9"), for: .normal)
        view.tintColor = .black
        view.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        view.backgroundColor = .white
        return view
    }()
    private lazy var inviteLebel:  UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Invite Your Friends"
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    private lazy var inviteButtonRigth: UIButton = {
        let view = UIButton()
        view.tintColor = .white
        view.setImage(UIImage(named: "Vector-7"), for: .normal)
        return view
    }()
    @objc func clickProfile(sender: UITapGestureRecognizer) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func clickAccoun(view: UIButton) {
        navigationController?.popToRootViewController(animated: true)
        }
    
//    }
//
//    @objc func clickSetingsChat(sender: UITapGestureRecognizer) {
//        navigationController?.pushViewController(SetingChats(), animated: true)
//    }
//    @objc func clickSetingsAppereance(sender: UITapGestureRecognizer) {
//        navigationController?.pushViewController(SetingsAppereance(), animated: true)
//    }
//    @objc func clickSetingsNotification(sender: UITapGestureRecognizer) {
//        navigationController?.pushViewController(SetingsNotification(), animated: true)
//    }
//    @objc func clickSetingsPrivacy(sender: UITapGestureRecognizer) {
//        navigationController?.pushViewController(SetingsPrivacy(), animated: true)
//    }
//    @objc func clickSetingsDataUsage(sender: UITapGestureRecognizer) {
//        navigationController?.pushViewController(SetingsDataUsage(), animated: true)
//    }
//    @objc func clickSetingsHelp(sender: UITapGestureRecognizer) {
//        navigationController?.pushViewController(SetingsHelp(), animated: true)
//    }
//    @objc func clickSetingsInitiv(sender: UITapGestureRecognizer) {
//        navigationController?.pushViewController(SetingsInviteYourFriends(), animated: true)
//    }
//
    
    override func viewDidLoad() {
//        nameFirstLebel.text ?? ""
        nameFirstLebel.text = nameOne + " " + nameTwo
        
       
        
        view.backgroundColor = .white
        
        view.addSubview(moreLebel)
        moreLebel.snp.makeConstraints { make in
            make.top.equalTo(view.safeArea.top).offset(10)
            make.left.equalToSuperview().offset(26)
        }
        view.addSubview(viewSetings)
        viewSetings.snp.makeConstraints { make in
            make.width.equalTo(400)
            make.height.equalTo(66)
            make.top.equalTo(moreLebel.snp.bottom).offset(29)
        }
        
        viewSetings.addSubview(profile)
        profile.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.left.equalToSuperview().offset(16)
            make.bottom.equalToSuperview().offset(-8)
        }
        viewSetings.addSubview(nameFirstLebel)
        nameFirstLebel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.left.equalTo(profile.snp.right).offset(20)
        }
//        viewSetings.addSubview(nameFirstLebel2)
//        nameFirstLebel2.snp.makeConstraints { make in
//            make.top.equalToSuperview().offset(10)
//            make.left.equalTo(nameFirstLebel.snp.right).offset(3)
//        }
        viewSetings.addSubview(numberLebel)
        numberLebel.snp.makeConstraints { make in
            make.top.equalTo(nameFirstLebel.snp.bottom).offset(9)
            make.left.equalTo(profile.snp.right).offset(20)
        }
        viewSetings.addSubview(rigthButton)
        rigthButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-43)
        }
        view.addSubview(accountSetings)
        accountSetings.snp.makeConstraints { make in
            make.width.equalTo(400)
            make.height.equalTo(50)
            make.top.equalTo(viewSetings.snp.bottom).offset(8)
        }
        accountSetings.addSubview(acountButton)
        acountButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(19)
            make.left.equalToSuperview().offset(20)
        }
        accountSetings.addSubview(acountLebel2)
        acountLebel2.snp.makeConstraints { make in
            make.left.equalTo(acountButton.snp.right).offset(13)
            make.top.equalToSuperview().offset(21)
        }
        accountSetings.addSubview(acountButtonRigth)
        acountButtonRigth.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(14)
            make.right.equalToSuperview().offset(-43)
        }
        view.addSubview(chatsSetings)
        chatsSetings.snp.makeConstraints { make in
            make.width.equalTo(400)
            make.height.equalTo(50)
            make.top.equalTo(accountSetings.snp.bottom)
        }
        chatsSetings.addSubview(chats)
        chats.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(19)
            make.top.equalTo(acountButton.snp.bottom).offset(26)
        }
        chatsSetings.addSubview(chatsLebel)
        chatsLebel.snp.makeConstraints { make in
            make.left.equalTo(chats.snp.right).offset(12)
            make.top.equalToSuperview().offset(20)
        }
        chatsSetings.addSubview(chatsButtonRigth)
        chatsButtonRigth.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(14)
            make.right.equalToSuperview().offset(-43)
        }
        view.addSubview(appereanceSetings)
        appereanceSetings.snp.makeConstraints { make in
            make.width.equalTo(400)
            make.height.equalTo(50)
            make.top.equalTo(chatsSetings.snp.bottom).offset(8)
        }
        appereanceSetings.addSubview(appereanceButton)
        appereanceButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(18)
            make.left.equalToSuperview().offset(17)
        }
        appereanceSetings.addSubview(appereanceLebel)
        appereanceLebel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(21)
            make.left.equalTo(appereanceButton.snp.right).offset(11)
        }
        appereanceSetings.addSubview(appereanceButtonRigth)
        appereanceButtonRigth.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(18)
            make.right.equalToSuperview().offset(-43)
        }
        view.addSubview(notificationSetings)
        notificationSetings.snp.makeConstraints { make in
            make.width.equalTo(400)
            make.height.equalTo(50)
            make.top.equalTo(appereanceSetings.snp.bottom)
        }
        notificationSetings.addSubview(notificationButton)
        notificationButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(18)
            make.left.equalToSuperview().offset(20)
        }
        notificationSetings.addSubview(notificationLebel)
        notificationLebel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(21)
            make.left.equalTo(notificationButton.snp.right).offset(13)
        }
        notificationSetings.addSubview(notificationButtonRigth)
        notificationButtonRigth.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(18)
            make.right.equalToSuperview().offset(-45)
        }
        view.addSubview(privacySetings)
        privacySetings.snp.makeConstraints { make in
            make.width.equalTo(400)
            make.height.equalTo(50)
            make.top.equalTo(notificationSetings.snp.bottom)
        }
        privacySetings.addSubview(privacyButton)
        privacyButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(18)
            make.left.equalToSuperview().offset(19)
        }
        privacySetings.addSubview(privacyLebel)
        privacyLebel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(21)
            make.left.equalTo(privacyButton.snp.right).offset(12)
        }
        privacySetings.addSubview(privacyButtonRigth)
        privacyButtonRigth.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(18)
            make.right.equalToSuperview().offset(-43)
        }
        view.addSubview(dataUsageSetings)
        dataUsageSetings.snp.makeConstraints { make in
            make.width.equalTo(400)
            make.height.equalTo(50)
            make.top.equalTo(privacySetings.snp.bottom)
        }
        dataUsageSetings.addSubview(dataUsageButton)
        dataUsageButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(18)
            make.left.equalToSuperview().offset(18)
        }
        dataUsageSetings.addSubview(dataUsageLebel)
        dataUsageLebel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(21)
            make.left.equalTo(dataUsageButton.snp.right).offset(11)
        }
        dataUsageSetings.addSubview(dataUsageButtonRigth)
        dataUsageButtonRigth.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(17)
            make.right.equalToSuperview().offset(-43)
        }
        view.addSubview(viewStroke)
        viewStroke.snp.makeConstraints { make in
            make.top.equalTo(dataUsageButton).offset(40)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.height.equalTo(1)
        }
        view.addSubview(helpSetings)
        helpSetings.snp.makeConstraints { make in
            make.width.equalTo(400)
            make.height.equalTo(50)
            make.top.equalTo(viewStroke.snp.bottom).offset(18)
        }
        helpSetings.addSubview(helpButton)
        helpButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(17)
            make.left.equalToSuperview().offset(17)
        }
        helpSetings.addSubview(helpLebel)
        helpLebel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(21)
            make.left.equalTo(helpButton.snp.right).offset(10)
        }
        helpSetings.addSubview(helpButtonRigth)
        helpButtonRigth.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(18)
            make.right.equalToSuperview().offset(-43)
        }
        view.addSubview(inviteSetings)
        inviteSetings.snp.makeConstraints { make in
            make.width.equalTo(400)
            make.height.equalTo(50)
            make.top.equalTo(helpSetings.snp.bottom)
        }
        inviteSetings.addSubview(inviteButton)
        inviteButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(18)
            make.left.equalToSuperview().offset(17)
        }
        inviteSetings.addSubview(inviteLebel)
        inviteLebel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(21)
            make.left.equalTo(inviteButton.snp.right).offset(10)
        }
        inviteSetings.addSubview(inviteButtonRigth)
        inviteButtonRigth.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(17)
            make.right.equalToSuperview().offset(-43)
        }
    }
}

//extension UIView {
//  func addTapGesture(tapNumber: Int, target: Any, action: Selector) {
//    let tap = UITapGestureRecognizer(target: target, action: action)
//    tap.numberOfTapsRequired = tapNumber
//    addGestureRecognizer(tap)
//    isUserInteractionEnabled = true
//  }
//}
