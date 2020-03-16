//
//  ViewController.swift
//  StrechyHeaderView
//
//  Created by Habib Durodola on 2020-03-15.
//  Copyright © 2020 doh. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource{



    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib.init(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cellReuseId")

    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          return 10
      }

      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
          let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellReuseId", for: indexPath) as! INPCollectionViewCell
       //   cell.configure(with: data[indexPath.row])

       // cell.singleRowLabel.text = "cell \(indexPath.row)"

        cell.singleLabelCell.text = "cell \(indexPath.row)"
          return cell
      }

}

