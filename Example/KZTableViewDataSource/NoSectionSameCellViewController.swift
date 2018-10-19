//
//  NoSectionSameCellViewController.swift
//  KZTableViewDataSource_Example
//
//  Created by 赵国庆 on 2018/10/19.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import KZTableViewDataSource

class NoSectionSameCell: UITableViewCellReusableFectoryProtocol {
    func config(_ data: [String]?) {
        textLabel?.text = data?[0]
    }
}

class NoSectionSameCellViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    private var dataSource: KZTableViewDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
    }
    
    private func setupData() {
        let section = KZTableViewSectionContainer((0...100).map({ (i) in
            return KZTableViewCellContainer(class: NoSectionSameCell.self, data: ["\(i)"]) { (tableView, indexPath, container, data) in
                print("点击了cell: \(indexPath.row)")
            }
        }))
        
       dataSource = KZTableViewDataSource(tableView, sectionsContainer: .init([section]))
    }
    
}
