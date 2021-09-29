//
//  ColorManager.swift
//  CornerColors
//
//  Created by Karamustafic, Anela on 9/18/21.
//
import UIKit
struct ColorManager {

    let labels: [UIColor]
    var index: Int

    mutating func getNextColor() -> UIColor {

        if index == labels.count {
            index = 0
        }

        let value = labels[index]
        index += 1

        return value
    }
}
