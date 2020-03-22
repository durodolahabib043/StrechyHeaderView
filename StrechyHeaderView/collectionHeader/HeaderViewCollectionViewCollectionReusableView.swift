//
//  HeaderViewCollectionViewCollectionReusableView.swift
//  StrechyHeaderView
//
//  Created by Habib Durodola on 2020-03-22.
//  Copyright © 2020 doh. All rights reserved.
//

import UIKit

class HeaderViewCollectionViewCollectionReusableView: UICollectionReusableView {

    @IBOutlet weak var headerImageView: UIImageView!
    override init(frame: CGRect) {
       super.init(frame: frame)
        self.backgroundColor = UIColor.black
    
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override func awakeFromNib() {
       super.awakeFromNib()
       //custom logic goes here
    }


}
