//
//  CustomView.swift
//  UIComponents
//
//  Created by hodaka fukushima on 2019/06/08.
//  Copyright © 2019 mt.hodaka. All rights reserved.
//

import UIKit
import Material

@IBDesignable
public class CustomView: UIView {

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    override public init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    override public func prepareForInterfaceBuilder() {
        commonInit()
    }

    private func commonInit() {
        backgroundColor = .blue

//        let button = UIButton(type: .infoLight)
        let button = IconButton(image: Icon.cm.search, tintColor: .white)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
