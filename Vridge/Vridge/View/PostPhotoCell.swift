//
//  PostPhotoCell.swift
//  Vridge
//
//  Created by Kang Mingu on 2020/10/04.
//

import UIKit

class PostPhotoCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.tintColor = .vridgePlaceholderColor
        iv.layer.borderColor = UIColor.vridgeGreen.cgColor
        iv.layer.borderWidth = 4
        return iv
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "TEST LABEL MAN"
        return label
    }()
    
    let newLabel = UILabel()
    
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(imageView)
        imageView.addConstraintsToFillView(self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
