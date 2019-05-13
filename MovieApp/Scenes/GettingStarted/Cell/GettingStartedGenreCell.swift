//
//  GettingStartedGenreCell.swift
//  MovieApp
//
//  Created by Phan Dinh Van on 5/14/19.
//  Copyright © 2019 nguyen.nam.khanh. All rights reserved.
//

import UIKit

final class GettingStartedGenreCell: UICollectionViewCell, NibReusable {
    @IBOutlet private weak var genreTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.do {
            $0.backgroundColor = .clear
        }
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.do {
            $0.setBorder(borderWidth: 1, borderColor: .white, cornerRadius: 10)
        }
        genreTitleLabel.do {
            $0.textColor = .white
        }
    }
    
    func bind(viewModel: GenreItemViewModel) {
        genreTitleLabel.text = viewModel.genreTitle
    }
    
    func updateCell(genre: Genre?) {
        genreTitleLabel.text = genre?.name
    }
    
    func toggleState() {
        self.do {
            $0.backgroundColor = $0.backgroundColor == .clear ? .gray : .clear
        }
    }
}
