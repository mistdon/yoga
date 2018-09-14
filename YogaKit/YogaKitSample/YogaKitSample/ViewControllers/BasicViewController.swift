/**
 * Copyright 2014-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE-examples file in the root directory of this source tree.
 */

import UIKit
import YogaKit

final class BasicViewController: UIViewController {
    var containerView: UIView!
    override func viewDidLoad() {
        containerView = UIView(frame: .zero)
        containerView.configureLayout { (layout) in
            layout.isEnabled = true
            layout.width = YGValue(self.view.bounds.size.width)
            layout.height = 300
        }
        self.view.addSubview(containerView)
//        let containerSize = self.view.bounds.size
//
//        let root = self.view!
//        root.backgroundColor = .white
//        root.configureLayout { (layout) in
//            layout.isEnabled = true
//            layout.width = YGValue(containerSize.width)
//            layout.height = YGValue(containerSize.height)
//            layout.alignItems = .center
//            layout.justifyContent = .center
//        }
//
//        let child1 = UIView()
//        child1.backgroundColor = .blue
//        child1.configureLayout { (layout) in
//            layout.isEnabled = true
//            layout.width = 100
//            layout.height = 10
//            layout.marginBottom = 25
//        }
//        root.addSubview(child1)
//
//        let child2 = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
//        child2.backgroundColor = .green
//        child2.configureLayout { (layout) in
//            layout.isEnabled = true
//            layout.alignSelf = .flexEnd
//        }
//        root.addSubview(child2)
//
//        let child3 = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
//        child3.backgroundColor = .yellow
//        child3.configureLayout { (layout) in
//            layout.isEnabled = true
//            layout.alignSelf = .flexStart
//        }
//        root.addSubview(child3)
//
//        root.yoga.applyLayout(preservingOrigin: true)
        // Test 2
//        let contentView = UIView(frame: .zero)
//        contentView.backgroundColor = UIColor.red
//        contentView.configureLayout { (layout) in
//            layout.isEnabled = true
//            layout.padding = YGValue(self.view.frame.size.width/2)
//        }
//        self.view.addSubview(contentView)
//
//        let view1 = UIView(frame: .zero)
//        view1.backgroundColor = UIColor.green
//        view1.configureLayout { (layout) in
//            layout.isEnabled = true
//            layout.alignSelf = .flexStart
//            layout.marginTop = 0
//            layout.padding = 8
//        }
//        contentView.addSubview(view1)
//
//        let view2 = UIView(frame: .zero)
//        view2.backgroundColor = UIColor.orange
//        view2.configureLayout { (layout) in
//            layout.isEnabled = true
//            layout.marginTop = 0
//            layout.padding = 60
//        }
//        contentView.addSubview(view2)
//
//        contentView.yoga.applyLayout(preservingOrigin: false)
        // test3
//        let contentView = UIView(frame: .zero)
//        contentView.backgroundColor = UIColor.cyan
//        contentView.configureLayout { (layout) in
//            layout.isEnabled = true
//            layout.width = YGValue(self.view.frame.size.width)
//            layout.height = YGValue(self.view.frame.size.height)
//            layout.justifyContent = .flexStart
//        }
//        self.view.addSubview(contentView)
//
//        let containerView = UIView(frame: .zero)
//        containerView.backgroundColor = UIColor.blue
//        containerView.configureLayout { (layout) in
//            layout.isEnabled = true
//            layout.flexDirection = .row
//            layout.width = YGValue(self.view.frame.size.width - 200)
//            layout.height = 64
//        }
//        contentView.addSubview(containerView)
//
//        let variablelabel = UILabel(frame: .zero)
//        variablelabel.backgroundColor = UIColor.green
//        variablelabel.text = "This is a variable label test text."
//        variablelabel.configureLayout { (layout) in
//            layout.isEnabled = true
//            layout.flexGrow = 0
//        }
//        containerView.addSubview(variablelabel)
//
//        let tagView = UIView(frame: .zero)
//        tagView.backgroundColor = UIColor.yellow
//        tagView.configureLayout { (layout) in
//            layout.isEnabled = true
//            layout.flexGrow = 0
//        }
//        containerView.addSubview(tagView)
//
//        let imageView = UIImageView(frame: .zero)
//        imageView.backgroundColor = UIColor.black
//        imageView.image = UIImage(named: "VIP")
//        imageView.configureLayout { (layout) in
//            layout.isEnabled = true
//            layout.flexGrow = 0
//            layout.width = 40
//        }
//        containerView.addSubview(imageView)
//        contentView.yoga.applyLayout(preservingOrigin: false)
//
//        DispatchQueue.global(qos: .userInitiated).async {
//            DispatchQueue.main.async {
//                print("\(containerView.frame)")
//            }
//        }
        //
        //
        testStackSpace()
    }
    
    /// 均分View
    private func testStackSpace() {
        
        let view1 = UIView(frame: .zero)
        view1.backgroundColor = UIColor.cyan
        view1.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flexGrow = 1.0
        }
        containerView.addSubview(view1)
        
        let view2 = UIView(frame: .zero)
        view2.backgroundColor = UIColor.magenta
        view2.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flexGrow = 1.0
        }
        containerView.addSubview(view2)
        
        let view3 = UIView(frame: .zero)
        view3.backgroundColor = UIColor.brown
        view3.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flexGrow = 1.0
        }
        containerView.addSubview(view3)
        containerView.yoga.applyLayout(preservingOrigin: true)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.containerView.yoga.flexDirection = .columnReverse
            self.containerView.yoga.applyLayout(preservingOrigin: true)
        }
    }
}
