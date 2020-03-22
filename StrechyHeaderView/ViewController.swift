//
//  ViewController.swift
//  StrechyHeaderView
//
//  Created by Habib Durodola on 2020-03-15.
//  Copyright © 2020 doh. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{



    @IBOutlet weak var collectionView: UICollectionView!
    let collectionViewHeaderFooterReuseIdentifier = "headerViewCollection"
    let cellReuseId = "cellReuseId"
    let CollectionViewCellXib = "CollectionViewCell"
    let HeaderViewCollectionViewCollectionXib = "HeaderViewCollectionViewCollectionReusableView"

    fileprivate func setUpCollectionView() {
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib.init(nibName: CollectionViewCellXib, bundle: nil), forCellWithReuseIdentifier: cellReuseId)
        collectionView.register(UINib.init(nibName: HeaderViewCollectionViewCollectionXib, bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier:collectionViewHeaderFooterReuseIdentifier)
        collectionView.contentInsetAdjustmentBehavior  = .never
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionView()
    }


    // MARK: Collection View
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseId, for: indexPath) as! INPCollectionViewCell
        cell.backgroundColor = UIColor.green
        cell.singleLabelCell.text = "cell \(indexPath.row)"
        return cell
    }

    // show CV header
    func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {

        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier:collectionViewHeaderFooterReuseIdentifier , for: indexPath) as! HeaderViewCollectionViewCollectionReusableView

        headerView.backgroundColor = UIColor.red
        headerView.headerImageView.image = UIImage(named: "stretchy_header")
        headerView.headerImageView.contentMode = .scaleAspectFill
        return headerView
    }

    // height of CV
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 200.0)
    }

    // make collectioView fill a row
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 50)
    }
}
