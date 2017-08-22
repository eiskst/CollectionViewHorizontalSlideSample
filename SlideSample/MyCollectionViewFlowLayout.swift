//
//  MyCollectionViewFlowLayout.swift
//  SlideSample
//
//  Created by Eisuke Sato on 2017/08/22.
//  Copyright © 2017年 Eisuke Sato. All rights reserved.
//

import UIKit

class MyCollectionViewFlowLayout: UICollectionViewFlowLayout {

    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let attributes = super.layoutAttributesForElements(in: rect)
        for attribute in attributes! {
            var rect = attribute.bounds
            rect.size.width += UIScreen.main.bounds.width - rect.width
            attribute.bounds = rect
        }
        
        return attributes
    }
}
