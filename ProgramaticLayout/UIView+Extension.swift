//
//  UIView+Extension.swift
//  ProgramaticLayout
//
//  Created by apple on 01/06/23.
//

import Foundation
import UIKit.UIView

extension UIView {
    /**
    Make view filled into superview using Autolayout Constraints
    - Parameters:
       - padding : an optionat parameter to make some space around the view
    */
    func fill(superview view: UIView, padding: UIEdgeInsets = .zero) {
        view.addSubview(self)
        translatesAutoresizingMaskIntoConstraints = false
        if let superviewTopAnchor = superview?.topAnchor {
            topAnchor.constraint(equalTo: superviewTopAnchor, constant: padding.top).isActive = true
        }
        if let superviewBottomAnchor = superview?.bottomAnchor {
            bottomAnchor.constraint(equalTo: superviewBottomAnchor, constant: -padding.bottom).isActive = true
        }
        if let superviewLeadingAnchor = superview?.leadingAnchor {
            leadingAnchor.constraint(equalTo: superviewLeadingAnchor, constant: padding.left).isActive = true
        }
        if let superviewTrailingAnchor = superview?.trailingAnchor {
            trailingAnchor.constraint(equalTo: superviewTrailingAnchor, constant: -padding.right).isActive = true
        }
    }
    
    func anchor(superview view: UIView, top: NSLayoutYAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, leading: NSLayoutXAxisAnchor? = nil, trailing: NSLayoutXAxisAnchor? = nil, padding: UIEdgeInsets = .zero) {
        view.addSubview(self)
        translatesAutoresizingMaskIntoConstraints = false
        if let topAnchor = top{
            self.topAnchor.constraint(equalTo: topAnchor, constant: padding.top).isActive = true
        }
        if let bottomAnchor = bottom{
            self.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -padding.bottom).isActive = true
        }
        if let leadingAnchor = leading{
            self.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding.left).isActive = true
        }
        if let trailingAnchor = trailing{
            self.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding.right).isActive = true
        }
    }
    
    func setHeight(_ height: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    func setWidth(_ width: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    func setSize(_ size: CGSize) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: size.height).isActive = true
        widthAnchor.constraint(equalToConstant: size.width).isActive = true
    }
    
    func centerVertically(at view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    func centerHorizontally(at view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
