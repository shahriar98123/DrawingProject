//
//  ArtCollectionViewController.swift
//  DrawingProject
//
//  Created by Shams, Shahriar on 11/7/18.
//  Copyright © 2018 Ctec. All rights reserved.
//

import UIKit

private let reuseIdentifier = "artidentifier"

public class ArtCollectionViewController: UICollectionViewController
{

    public override func viewDidLoad() -> Void
    {
    super.viewDidLoad()
    
    self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
        
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRowCompact : CGFloat = 4
    private let itemsPerRowNormal : CGFloat = 6
    
    private let creativeCS : [UIImage?] =
    {
        return [
            UIImage(named: "ShahriarJavaHaiku"),
            UIImage(named: "ShahriarShams"),
            UIImage(named: "Computer"),
            UIImage(named: "Guitar"),
            UIImage(named: "Phone"),
            UIImage(named: "ShahriarSwiftHaiku"),
            UIImage(named: "ShahriarMainframeHaiku")
    ]
}()

    private let labels : [String] =
    {
    return [
    "Java Haiku",
    "Octocat",
    "Computer",
    "Guitar",
    "Phone",
    "Swift Haiku",
    "MTM Haiku"
    
    ]
    }()
    public override func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return 1
    }
    
    public override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return creativeCS.count
    }
    
    public override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
        return cell
    }
    
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
{
    let paddingSpace = sectionInsets.left * (itemsPerRowCompact + 1)
    let avaiableWidth = view.frame.width - paddingSpace
    let widthPerItem = avaiableWidth / itemsPerRowCompact
    
    return CGSize(width: widthPerItem, height: widthPerItem)
}

    public func collectionView(_ collectionView: UICollectionView, layout colllectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        return sectionInsets
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    {
        return sectionInsets.left
    }

}

