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
        contentView.translatesAutoresizingMaskIntoConstraints = false
        self.translatesAutoresizingMaskIntoConstraints = false
        //imageView = UIImageView(frame: CGRect(x: 0, y: 5, width: frame.size.width, height: frame.size.height*2/3))
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        contentView.addSubview(imageView)
        textLabel = UILabel(frame: CGRect(x: 0, y: frame.size.height*2/3, width: frame.size.width, height: frame.size.height/3))
        textLabel.font = UIFont.systemFontOfSize(UIFont.smallSystemFontSize())
        textLabel.textAlignment = .Center
        contentView.addSubview(textLabel)
        let constraintImageViewHeight = NSLayoutConstraint(item: imageView!, attribute: .Height, relatedBy: .Equal, toItem: contentView, attribute: .Height, multiplier: 1.0, constant: -50)
        let constraintImageViewWidth = NSLayoutConstraint(item: imageView!, attribute: .Width, relatedBy: .Equal, toItem: contentView, attribute: .Width, multiplier: 1.0, constant: -30)
        let constraintImageCenterX = NSLayoutConstraint(item: imageView!, attribute: .CenterX, relatedBy: .Equal, toItem: contentView, attribute: .CenterX, multiplier: 1.0, constant: 0)
        let constraintImageCenterY = NSLayoutConstraint(item: imageView!, attribute: .CenterY, relatedBy: .Equal, toItem: contentView, attribute: .CenterY, multiplier: 1.0, constant: 0)
//        let constraintImageTop = NSLayoutConstraint(item: imageView, attribute: .Top, relatedBy: .Equal, toItem: contentView, attribute: .Top, multiplier: 1.0, constant: -10)
//        let constraintImageLeading = NSLayoutConstraint(item: imageView, attribute: .Leading, relatedBy: .Equal, toItem: contentView, attribute: .Leading, multiplier: 1.0, constant: 10)
//        let constraintImageTrailing = NSLayoutConstraint(item: imageView, attribute: .Trailing, relatedBy: .Equal, toItem: contentView, attribute: .Trailing, multiplier: 1.0, constant: -10)
//        let constraintImageBottom = NSLayoutConstraint(item: imageView, attribute: .Bottom, relatedBy: .Equal, toItem: contentView, attribute: .Leading, multiplier: 1.0, constant: 0)
//        let constraintLabelLeading = NSLayoutConstraint(item: textLabel, attribute: .Leading, relatedBy: .Equal, toItem: contentView, attribute: .Leading, multiplier: 1.0, constant: 10)
//        let constraintLabelTrailing = NSLayoutConstraint(item: textLabel, attribute: .Trailing, relatedBy: .Equal, toItem: contentView, attribute: .Trailing, multiplier: 1.0, constant: -10)
//        let constraintLabelBottom = NSLayoutConstraint(item: textLabel, attribute: .Bottom, relatedBy: .Equal, toItem: contentView, attribute: .Bottom, multiplier: 1.0, constant: 0)
        NSLayoutConstraint.activateConstraints([constraintImageViewHeight,constraintImageViewWidth,constraintImageCenterX, constraintImageCenterY])
        contentView.addConstraints([constraintImageCenterX, constraintImageCenterY])
        
    }
}
