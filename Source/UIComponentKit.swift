//
//  UIComponentKit.swift
//  UIComponentsKit
//
//  Created by Wajahat Hassan on 04/02/2020.
//  Copyright © 2020 non. All rights reserved.

import Foundation
import UIKit

public class UILabelFactory {
    
    public class func createUILabel<T: UILabel>(with color: UIColor = .black, textStyle: AppTextStyle = .title1, alignment: NSTextAlignment = .left, numberOfLines: Int = 1, lineBreakMode: NSLineBreakMode = .byTruncatingTail, text: String? = nil) -> T {
        let label = T()
        label.font = UIFont.appFont(forTextStyle: textStyle)
        label.textColor = color
        label.textAlignment = alignment
        label.numberOfLines = numberOfLines
        label.lineBreakMode = lineBreakMode
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}


public class UIImageViewFactory {
    public class func createImageView(mode: UIImageView.ContentMode = .scaleAspectFill, image: UIImage? = nil, tintColor: UIColor = .clear) -> UIImageView {
        let imageView = UIImageView()
        imageView.contentMode = mode
        imageView.tintColor = tintColor
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = image
        return imageView
    }
}

public class UIButtonFactory {
    
    public class func createButton(title: String = String(), backgroundColor: UIColor? = .systemBlue, textColor: UIColor = .systemBlue) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(textColor, for: .normal)
        button.backgroundColor = backgroundColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
}

public class UIStackViewFactory {
    public class func createStackView(with axis: NSLayoutConstraint.Axis, alignment: UIStackView.Alignment = .leading, distribution: UIStackView.Distribution = .fillProportionally, spacing: CGFloat = 0, arrangedSubviews: [UIView]? = nil) -> UIStackView {
        let stackView = arrangedSubviews == nil ? UIStackView() : UIStackView(arrangedSubviews: arrangedSubviews!)
        stackView.axis = axis
        stackView.alignment = alignment
        stackView.distribution = distribution
        stackView.spacing = spacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }
}


public class UIViewFactory {
    public class func createView(with backgroundColor: UIColor? = nil, radius: CGFloat = 0.0, boarderWidth: CGFloat = 0.0, boarderColor: UIColor = .clear) -> UIView {
        let view = UIView()
        view.backgroundColor = backgroundColor
        view.layer.cornerRadius = radius
        view.layer.borderWidth = boarderWidth
        view.layer.borderColor = boarderColor.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}

public class textFieldFactory {
    public class func createField(text: String = String(), isEditable: Bool = false, placeholder: String = "") -> UITextField {
        let field = UITextField()
        field.text = text
        field.placeholder = placeholder
        field.isUserInteractionEnabled = isEditable
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }
}


public class textViewFactory {
    public class func createTextView(text: String = String(), isEditable: Bool = false) -> UITextView {
        let textView = UITextView()
        textView.text = text
        textView.isUserInteractionEnabled = isEditable
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }
}
