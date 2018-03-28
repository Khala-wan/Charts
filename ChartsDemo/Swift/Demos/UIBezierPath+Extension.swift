//
//  UIBezierPath+Extension.swift
//  ChartsDemo
//
//  Created by 万圣 on 2018/3/27.
//  Copyright © 2018年 dcg. All rights reserved.
//

import Foundation
import UIKit

extension UIBezierPath {
    func getPoints()->[CGPoint] {
        var array: NSMutableArray = NSMutableArray()
        self.cgPath.apply(info: &array) { (info, elementPointer) in
            var points: NSMutableArray = (info?.assumingMemoryBound(to: NSMutableArray.self).pointee)!
            let element: CGPathElement = elementPointer.pointee
            points.add(element.points.pointee)
        }
        return array as? [CGPoint] ?? []
    }
}
