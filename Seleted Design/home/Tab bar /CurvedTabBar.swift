//
//  CurvedTabBar.swift
//  Seleted Design
//
//  Created by Ebtsam alkhuzai on 07/05/1442 AH.
//

import UIKit

//I did not use this ... 

@IBDesignable
class CurvedTabBar: UITabBar {

    @IBInspectable var color: UIColor?

      private var shapeLayer: CALayer?

      override func draw(_ rect: CGRect) {
          addShape()
      }

      private func addShape() {
          let shapeLayer = CAShapeLayer()
      
        /*  shapeLayer.path = createPath()
          shapeLayer.strokeColor = UIColor.gray.withAlphaComponent(0.1).cgColor*/
          shapeLayer.fillColor = color?.cgColor ?? UIColor.white.cgColor
         /* shapeLayer.lineWidth = 1
      
          if let oldShapeLayer = self.shapeLayer {
              layer.replaceSublayer(oldShapeLayer, with: shapeLayer)
          } else {
              layer.insertSublayer(shapeLayer, at: 0)
          }
      
          self.shapeLayer = shapeLayer
      }

      private func createPath() -> CGPath {
          let path = UIBezierPath(
              roundedRect: bounds,
              byRoundingCorners: [.topLeft, .topRight],
              cornerRadii: CGSize(width: 15.0, height: 0.0))
      
          return path.cgPath*/
      }
  }

