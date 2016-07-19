//
//  CollectionViewCell.swift
//  UICollectionView
//
//  Created by TJQ on 16/7/18.
//  Copyright © 2016年 KiraMelody. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var textLabel: UILabel! = UILabel();
    var imageView: UIImageView! = UIImageView();
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView = UIImageView(frame: CGRect(x: 0, y: 5, width: frame.size.width, height: frame.size.height*2/3))
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        contentView.addSubview(imageView)
        
        let textFrame = CGRect(x: 0, y: frame.size.height*2/3, width: frame.size.width, height: frame.size.height/3)
        textLabel = UILabel(frame: textFrame)
        textLabel.font = UIFont.systemFontOfSize(UIFont.smallSystemFontSize())
        textLabel.textAlignment = .Center
        contentView.addSubview(textLabel)
        let constraintImageCenterX = NSLayoutConstraint(item: imageView!, attribute: .CenterX, relatedBy: .Equal, toItem: contentView, attribute: .CenterX, multiplier: 1.0, constant: 0)
        let constraintImageCenterY = NSLayoutConstraint(item: imageView!, attribute: .CenterY, relatedBy: .Equal, toItem: contentView, attribute: .CenterY, multiplier: 1.0, constant: 0)
        let constraintLableCenterX = NSLayoutConstraint(item: textLabel, attribute: .CenterX, relatedBy: .Equal, toItem: imageView, attribute: .CenterX, multiplier: 1.0, constant: 0)
        let constraintLableCenterY = NSLayoutConstraint(item: textLabel, attribute: .CenterY, relatedBy: .Equal, toItem: imageView, attribute: .CenterY, multiplier: 1.0, constant: 0)
        NSLayoutConstraint.activateConstraints([constraintImageCenterX, constraintImageCenterY])
        let constraintLabelLeading = NSLayoutConstraint(item: textLabel, attribute: .Leading, relatedBy: .Equal, toItem: contentView, attribute: .Leading, multiplier: 1.0, constant: 8)
        let constraintLableLabelTrailing = NSLayoutConstraint(item: textLabel, attribute: .Trailing, relatedBy: .Equal, toItem: contentView, attribute: .Leading, multiplier: 1.0, constant: 8)
        let constraintUsernameLabelAlignBottom = NSLayoutConstraint(item: textLabel, attribute: .Bottom, relatedBy: .Equal, toItem: imageView, attribute: .Bottom, multiplier: 1.0, constant: 0)
        //
        
    }
}
