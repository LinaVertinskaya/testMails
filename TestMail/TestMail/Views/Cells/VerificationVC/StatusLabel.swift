//
//  StatusLabel.swift
//  TestMail
//
//  Created by Лина Вертинская on 8.07.22.
//

import Foundation
import UIKit

class StatusLabel: UILabel {

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
        text = "Check your mail"
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        font = UIFont(name: "Apple SD Gothic Neo", size: 16)
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false
    }

    private func setNotValidSetting() {
        text = "Mail is not valid. Example: name@domain.ru"
        textColor = #colorLiteral(red: 0.3158112466, green: 0.29249686, blue: 0.8936632276, alpha: 1)
    }

    private func setValidSetting() {
        text = "Mail is valid"
        textColor = #colorLiteral(red: 0.5789549947, green: 0.669416368, blue: 0.2909847498, alpha: 1)
    }

    public func setDefaultSetting() {
        configure()
    }
}
