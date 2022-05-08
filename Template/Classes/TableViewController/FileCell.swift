//
//  FileCell.swift
//  {ModuleName}
//
//  Created by {AUTHOR} on {YEAR}/{TODAY}/{DATE}.
//

import Foundation
import MVVMKit

class FileCellModel: SRCellModel {
    var title: String?
    
    override init() {
        super.init()
        self.showSeparator = false
    }
    
    override func calculateHeight(_ width: CGFloat) -> CGFloat {
        50
    }
}

class FileCell: SRTableViewCell {

    private lazy var label: UILabel = {
        let view = UILabel.init(frame: .zero)
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initUI()
        layoutUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func initUI() {
        self.contentView.addSubview(label)
        label.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
        self.contentView.backgroundColor = .green
    }
    private func layoutUI() {
       
    }
    override func setup() {
        guard let cellModel = self.data as? TestCellModel else { return }
        self.label.text = cellModel.title
        self.contentView.layoutSubviews()
    }
}
