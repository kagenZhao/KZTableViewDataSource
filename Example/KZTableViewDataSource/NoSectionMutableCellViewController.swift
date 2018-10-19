//
//  NoSectionMutableCellViewController.swift
//  KZTableViewDataSource_Example
//
//  Created by 赵国庆 on 2018/10/19.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import KZTableViewDataSource

class NoSectionMutableCell1: UITableViewCellReusableFectoryProtocol {
    func config(_ data: [String]?) {
        textLabel?.text = data?[0]
    }
}

class NoSectionMutableCell2: UITableViewCellReusableFectoryProtocol {
    func config(_ data: String?) {
        textLabel?.text = data
    }
}


class NoSectionMutableCellViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    private var dataSource: KZTableViewDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
    }
    
    private func setupData() {
        let section = KZTableViewSectionContainer((0...100).map({ (i) in
            if i % 2 == 0 {
                return KZTableViewCellContainer(class: NoSectionMutableCell1.self, data: ["Cell1 \(i)"]) { (tableView, indexPath, container, data) in
                    print("点击了NoSectionMutableCell1: \(indexPath.row)")
                }
            } else {
                return KZTableViewCellContainer(class: NoSectionMutableCell2.self, data: "Cell2 \(i)") { (tableView, indexPath, container, data) in
                    print("点击了NoSectionMutableCell2: \(indexPath.row)")
                }
            }
        }))
        
        dataSource = KZTableViewDataSource(tableView, sectionsContainer: .init([section]))
    }
}
