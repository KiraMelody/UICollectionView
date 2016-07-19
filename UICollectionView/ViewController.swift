//
//  ViewController.swift
//  UICollectionView
//
//  Created by TJQ on 16/7/18.
//  Copyright © 2016年 KiraMelody. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    var collectionView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 100, left: 50, bottom: 50, right: 50)
        layout.itemSize = CGSize(width: 100, height: 100)
        layout.minimumInteritemSpacing = 10.0;
        layout.minimumLineSpacing = 100.0;
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        self.view.addSubview(collectionView!)
        collectionView!.dataSource = self
        collectionView!.delegate = self
        collectionView!.registerClass(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        collectionView!.backgroundColor = UIColor.whiteColor()
        let constraintCenterViewHeight = NSLayoutConstraint(item: collectionView!, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 300)
        let constraintCenterViewWidth = NSLayoutConstraint(item: collectionView!, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 200)
        let constraintCenterViewCenterX = NSLayoutConstraint(item: collectionView!, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1.0, constant: 200)
        let constraintCenterViewCenterY = NSLayoutConstraint(item: collectionView!, attribute: .CenterY, relatedBy: .Equal, toItem: view, attribute: .CenterY, multiplier: 1.0, constant: 0)
//        NSLayoutConstraint.activateConstraints([constraintCenterViewHeight, constraintCenterViewWidth, constraintCenterViewCenterX, constraintCenterViewCenterY])
        view.addConstraints([constraintCenterViewHeight, constraintCenterViewWidth, constraintCenterViewCenterX, constraintCenterViewCenterY])

    }

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return content.count;
    }
    
    var content = ["啦啦啦","哈哈哈","呵呵呵","哦哦哦","嗯嗯嗯","呱呱呱","1","2","3","4"]
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionViewCell", forIndexPath: indexPath) as! CollectionViewCell

        // Get the superview's layout
        if #available(iOS 9.0, *) {
            let margins = collectionView.layoutMarginsGuide
            
        } else {
            // Fallback on earlier versions
        }
        
        // Pin the leading edge of myView to the margin's leading edge
        myView.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
        
        // Pin the trailing edge of myView to the margin's trailing edge
        myView.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
        
        // Give myView a 1:2 aspect ratio
        myView.heightAnchor.constraintEqualToAnchor(myView.widthAnchor, multiplier: 2.0)
        cell.layer.borderColor = UIColor.grayColor().CGColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        cell.textLabel?.text = "\(content[indexPath.row])"
        cell.imageView?.image = UIImage(named: "Unknown-\(indexPath.row+1).png")
        
        
//        let constraintUsernameFieldVTop = NSLayoutConstraint(item: usernameField, attribute: .Top, relatedBy: .Equal, toItem: centerView, attribute: .Top, multiplier: 1.0, constant: 8)
//        let constraintUsernameFieldHTrailing = NSLayoutConstraint(item: usernameField, attribute: .Trailing, relatedBy: .Equal, toItem: centerView, attribute: .Trailing, multiplier: 1.0, constant: -8)
//        let constraintUsernameFieldVBottom = NSLayoutConstraint(item: usernameField, attribute: .Bottom, relatedBy: .Equal, toItem: passwordField, attribute: .Top, multiplier: 1.0, constant: 8)
//        
//        let constraintPasswordLabelHLeading = NSLayoutConstraint(item: passwordLabel, attribute: .Leading, relatedBy: .Equal, toItem: centerView, attribute: .Leading, multiplier: 1.0, constant: 8)
//        let constraintPasswordLabelHTrailing = NSLayoutConstraint(item: passwordLabel, attribute: .Trailing, relatedBy: .Equal, toItem: passwordField, attribute: .Leading, multiplier: 1.0, constant: 8)
//        let constraintPasswordLabelAlignBottom = NSLayoutConstraint(item: passwordLabel, attribute: .Bottom, relatedBy: .Equal, toItem: passwordField, attribute: .Bottom, multiplier: 1.0, constant: 0)
//        
//        let constraintPasswordFieldHTrailing = NSLayoutConstraint(item: passwordField, attribute: .Trailing, relatedBy: .Equal, toItem: centerView, attribute: .Trailing, multiplier: 1.0, constant: -8)
//        
//        centerView.setTranslatesAutoresizingMaskIntoConstraints(false)
//        usernameLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
//        usernameField.setTranslatesAutoresizingMaskIntoConstraints(false)
//        passwordField.setTranslatesAutoresizingMaskIntoConstraints(false)
//        passwordLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

