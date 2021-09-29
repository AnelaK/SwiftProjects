//
//  CornerColors.swift
//  CornerColors
//
//  Created by Karamustafic, Anela on 9/18/21.
//
import UIKit
class CornerColors {

    private static let colorsArray = [UIColor.red,
                                      UIColor.yellow,
                                      UIColor.blue,
                                      UIColor.green]

    var topLeftCornerCol = ColorManager(labels: colorsArray, index: 0)
    var topRightCornerCol = ColorManager(labels: colorsArray, index: 1)
    var bottomRightCornerCol = ColorManager(labels: colorsArray, index: 2)
    var bottomLeftCornerCol = ColorManager(labels: colorsArray, index: 3)
    

    func topLeftCorner() -> UIColor {
        return topLeftCornerCol.getNextColor()
    }
    
    func topRightCorner() -> UIColor {
        return topRightCornerCol.getNextColor()
    }
    
    func bottomRightCorner() -> UIColor {
        return bottomRightCornerCol.getNextColor()
    }
    
    func bottomLeftCorner() -> UIColor {
        return bottomLeftCornerCol.getNextColor()
    }
    
    
}
