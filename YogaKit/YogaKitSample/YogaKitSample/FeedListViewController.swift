//
//  FeedListViewController.swift
//  YogaKitSample
//
//  Created by shendong on 2018/9/13.
//  Copyright © 2018年 facebook. All rights reserved.
//

import UIKit
import YogaKit

let KCellIdentifeir = "KCellIdentifier"

final class FeedListViewController: UIViewController {
  
    var tableView: UITableView {
        let tempTableView = UITableView(frame: .zero, style: .plain)
        tempTableView.delegate = self
        tempTableView.dataSource = self
        tempTableView.register(UITableViewCell.self, forCellReuseIdentifier: KCellIdentifeir)
        view.addSubview(tempTableView)
        return tempTableView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.configureLayout { (layout) in
            layout.isEnabled = true
            layout.position = .absolute
            layout.top = 0
            layout.bottom = 0
            layout.left = 0
            layout.right = 0
        }
        self.view.configureLayout { (layout) in
            layout.isEnabled = true
        }
        self.view.yoga.applyLayout(preservingOrigin: true)
        DispatchQueue.global(qos: .userInitiated).async {
            DispatchQueue.main.async {
                print("\(self.tableView.frame)")
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension FeedListViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: KCellIdentifeir, for: indexPath)
        cell.textLabel?.text = "indexPath.row : \(indexPath.row)"
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
}
