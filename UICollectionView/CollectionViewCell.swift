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
    
    var textLabel: UILabel!
    var imageView: UIImageView!
    
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
    }
}
