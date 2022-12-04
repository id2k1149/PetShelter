//
//  GalleryCollectionView.swift
//  PetShelter
//
//  Created by Max Franz Immelmann on 12/1/22.
//

import UIKit

class GalleryCollectionView: UICollectionView,
                             UICollectionViewDelegate,
                             UICollectionViewDataSource,
                             UICollectionViewDelegateFlowLayout
{
    
    var cells = [Pet]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        
        backgroundColor = #colorLiteral(red: 0.96, green: 0.96, blue: 0.96, alpha: 1)
        delegate = self
        dataSource = self
        
        register(GalleryCollectionViewCell.self,
                 forCellWithReuseIdentifier: GalleryCollectionViewCell.reuseId)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        layout.minimumLineSpacing = Constants.galleryMinimumLineSpacing
        contentInset = UIEdgeInsets(top: 0,
                                    left: Constants.leftDistanceToView,
                                    bottom: 0,
                                    right: Constants.rightDistanceToView)
        
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
    }
    
    func set(cells: [Pet]) {
        self.cells = cells
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        cells.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: GalleryCollectionViewCell.reuseId, for: indexPath) as! GalleryCollectionViewCell
        cell.mainImageView.image = UIImage(named: cells[indexPath.row].image)
        cell.nameLabel.text = "← \(cells[indexPath.row].name) →" 
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.galleryItemWidth, height: Constants.galleryItemWidth)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

struct Constants {
    static let leftDistanceToView: CGFloat = 15
    static let rightDistanceToView: CGFloat = 15
    static let galleryMinimumLineSpacing: CGFloat = 10
    static let galleryItemWidth =
    UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView
}
