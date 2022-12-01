//
//  GalleryCollectionView.swift
//  PetShelter
//
//  Created by Max Franz Immelmann on 12/1/22.
//

import UIKit

class GalleryCollectionView: UICollectionView,
                                UICollectionViewDelegate,
                             UICollectionViewDataSource {
    
    var cells = [Pet]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        
        backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        delegate = self
        dataSource = self
        
        register(GalleryCollectionViewCell.self, forCellWithReuseIdentifier: GalleryCollectionViewCell.reuseId)
        
        translatesAutoresizingMaskIntoConstraints = false
        
//        backgroundColor = #colorLiteral(red: 0.9589126706, green: 0.9690223336, blue: 0.9815708995, alpha: 1)
//        delegate = self
//        dataSource = self
//
//
//        translatesAutoresizingMaskIntoConstraints = false
//        layout.minimumLineSpacing = Constants.galleryMinimumLineSpacing
//        contentInset = UIEdgeInsets(top: 0, left: Constants.leftDistanceToView, bottom: 0, right: Constants.rightDistanceToView)
//
//
//        showsHorizontalScrollIndicator = false
//        showsVerticalScrollIndicator = false
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        cells.count
        print("5 cells")
        return 5
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: GalleryCollectionViewCell.reuseId, for: indexPath)
//        cell.mainImageView.image = cells[indexPath.row].image
//                cell.nameLabel.text = cells[indexPath.row].sushiName
//                cell.smallDescriptionLabel.text = cells[indexPath.row].smallDescription
//                cell.costLabel.text = "$\(cells[indexPath.row].cost)"
                return cell
        
    }
    
   
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    func set(cells: [Pet]) {
//        self.cells = cells
//    }

}
