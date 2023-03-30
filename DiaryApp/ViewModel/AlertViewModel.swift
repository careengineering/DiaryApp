//
//  AlertViewModel.swift
//  DiaryApp
//
//  Created by Çare C. on 30.03.2023.
//

import Foundation

class AlertViewModel: ObservableObject {
    @Published var showAlert = false
    @Published var title = ""
    @Published var message = ""
    @Published var defaultButtonTitle = "ok".localized()
    
    func showAlert(title: String, message: String) {
        self.title = title
        self.message = message
        self.showAlert = true
        
    }
}
