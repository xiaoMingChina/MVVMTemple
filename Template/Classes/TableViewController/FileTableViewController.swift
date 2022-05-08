//
//  FileTableViewController.swift
//  {ModuleName}
//
//  Created by {AUTHOR} on {TODAY}.
//

import Foundation
import SnapKit
import MVVMKit

class FileTableViewController: SRTableViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = FileViewModel.init()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel?.refresh()
    }
    
    override func cellIdentifierAndClasses() -> [String: AnyClass] {
        return [
            FileCellModel.cellIdentifier(): FileCell.self
        ]
    }
}
