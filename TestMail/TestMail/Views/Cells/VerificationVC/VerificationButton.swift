//
//  VerificationButton.swift
//  TestMail
//
//  Created by Лина Вертинская on 8.07.22.
//

import Foundation
import UIKit

class VerificationButton: UIButton {


    public var isValid = false {
        didSet {
            if self.isValid {
                setValidSetting()
            } else {
                setNotValidSetting()
            }
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        setTitle("Verification Button", for: .normal)
        let color = #colorLiteral(red: 0.250980407, green: 0.250980407, blue: 0.250980407, alpha: 1)
        setTitleColor(color, for: .normal)
        layer.cornerRadius = 10
        titleLabel?.font = UIFont(name: "Avenir Book", size: 17)
        isEnabled = false
        alpha = 0.5
        translatesAutoresizingMaskIntoConstraints = false
    }

    private func setNotValidSetting() {
        isEnabled = false
        alpha = 0.5
    }

    private func setValidSetting() {
        isEnabled = true
        alpha = 1
    }

    public func setDefaultSetting() {
        configure()
    }
}
