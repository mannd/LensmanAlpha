//
//  ModulesViewController.swift
//  LensmanAlpha
//
//  Created by David Mann on 6/30/17.
//  Copyright © 2017 David Mann. All rights reserved.
//

import UIKit


final class ModulesViewController: UICollectionViewController {
    
    fileprivate let reuseIdentifier = "ModuleButton"
//    fileprivate let sectionInsets = UIEdgeInsets(top: 20.0, left: 20.0, bottom: 20.0, right: 20.0)

    fileprivate let itemsPerRow : CGFloat = 2
    
//    let labelFont = "GillSans-Bold"
    let labelFont = "EurostileBQ-BoldExtended"
    let labelFontSize: CGFloat = 40


    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(ModuleCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 20
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ModuleCollectionViewCell

        // Configure the cell
        if indexPath.section == 0 && indexPath.item == 0 {
            cell.moduleLabel.text = "S Y S"
            cell.backgroundColor = UIColor(red:0.16, green:0.40, blue:0.58, alpha:1.0)
            cell.moduleLabel.layer.borderColor = UIColor.green.cgColor
            cell.moduleLabel.layer.borderWidth = 3.0;
        }
        else if indexPath.section == 0 && indexPath.item == 1 {
            cell.moduleLabel.text = "D M G"
            cell.backgroundColor = UIColor(red:0.15, green:0.37, blue:0.25, alpha:1.0)
            cell.moduleLabel.layer.borderColor = nil
            cell.moduleLabel.layer.borderWidth = 0
        }
        else if indexPath.section == 0 && indexPath.item == 1 {
            cell.moduleLabel.text = "C O M"
            cell.backgroundColor = .orange
            cell.moduleLabel.layer.borderColor = nil
            cell.moduleLabel.layer.borderWidth = 0
        }
        else {
            cell.moduleLabel.text = "N A V"
            cell.backgroundColor = UIColor(red:0.67, green:0.10, blue:0.24, alpha:1.0)
            cell.moduleLabel.layer.borderColor = nil
            cell.moduleLabel.layer.borderWidth = 0;
        }
        cell.moduleLabel.font = UIFont(name: labelFont, size: labelFontSize)
        cell.moduleLabel.textColor = .white
        cell.moduleLabel.textAlignment = .center
        cell.moduleLabel.numberOfLines = 1
        cell.moduleLabel.adjustsFontSizeToFitWidth = true
        cell.moduleLabel.minimumScaleFactor = 0.25

        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    
    

}

extension ModulesViewController : UICollectionViewDelegateFlowLayout {
    //1
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let widthPerItem = view.frame.width  * itemsPerRow / (4 * itemsPerRow + 1)
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        let margin = view.frame.width / (3 * itemsPerRow + 1)
        return UIEdgeInsets(top: margin, left: margin, bottom: margin, right: margin)
        //return sectionInsets
    }
    
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        //return sectionInsets.left
        return view.frame.width / (3 * itemsPerRow + 1)
    }
}
