//
//  FileViewModel.swift
//  {ModuleName}
//
//  Created by {AUTHOR} on {TODAY}.
//

import Foundation
import MVVMKit

class FileViewModel: SRViewModel {

    override func update(_ completion: SRViewModelCompletion? = nil) {
        self.state = SRViewModelStateUpdating
        self.getNetData()
    }
    
    override func refresh(_ completion: SRViewModelCompletion? = nil) {
        self.state = SRViewModelStateRefreshing
        getNetData()
    }
    
    override func reloadData() {
        super.reloadData()
    }

    override func newSectionModels() -> [SRSectionModel] {

        return []

    }

    private func getNetData() {
        self.state = SRViewModelStateIdle
        self.reloadData()
    }

  
}
