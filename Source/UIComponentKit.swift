//    MIT License
//
//    Copyright (c) 2020 Wajahat Hassan <wajahathassan64@gmail.com>
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in
//    all copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//    THE SOFTWARE.git

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
