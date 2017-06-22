//
//  PomItButton.swift
//  PomItButton
//
//  Created by Andrew Ryan on 6/20/17.
//  Copyright © 2017 AndrewRyan. All rights reserved.
//

import UIKit

@IBDesignable
class PomItButton: UIControl {
    
    private lazy var imageView: UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 10.0, weight: UIFontWeightRegular)
        return label
    }()
    
    private var spaceConstraint: NSLayoutConstraint!
    
    @IBInspectable var spacing: CGFloat = 0.0 {
        didSet{
            spaceConstraint?.constant = spacing
        }
    }
    
    @IBInspectable var image: UIImage? {
        get {
            return imageView.image
        }
        set(newImage) {
            imageView.image = newImage?.withRenderingMode(.alwaysOriginal)
        }
    }
    
    @IBInspectable
    var text: String? {
        get {
            return label.text
        }
        set(newText) {
            label.text = newText
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialization()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialization()
    }
    private func initialization() {
        //translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        addSubview(imageView)
        imageView.contentMode = .scaleAspectFit
        spaceConstraint = label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: spacing)
        
        NSLayoutConstraint.activate(
            [
                imageView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
                imageView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
                imageView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
                spaceConstraint,
                label.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
                imageView.centerXAnchor.constraint(equalTo: label.centerXAnchor)
            ]
        )
        
        layer.cornerRadius = 10
        addTapGestureRecognizer()

    }
    
}

extension PomItButton {
    fileprivate func addTapGestureRecognizer() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handlePomItButtonTapped(sender:)))
        addGestureRecognizer(tapGestureRecognizer)
    }
    func handlePomItButtonTapped(sender: UITapGestureRecognizer) {
        sendActions(for: .touchUpInside)
    }
}



























