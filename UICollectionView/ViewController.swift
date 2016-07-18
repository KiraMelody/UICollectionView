//
//  ViewController.swift
//  UICollectionView
//
//  Created by TJQ on 16/7/18.
//  Copyright © 2016年 KiraMelody. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    @IBOutlet var collectionView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 100, left: 50, bottom: 50, right: 50)
        layout.itemSize = CGSize(width: 60, height: 60)
        layout.minimumInteritemSpacing = 0.0;
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView!.dataSource = self
        collectionView!.delegate = self
        collectionView!.registerClass(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        collectionView!.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(collectionView!)
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
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

