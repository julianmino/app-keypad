//
//  BasePresenter.swift
//  app-keypad
//
//  Created by admin on 11/23/20.
//  Copyright © 2020 Julian Mino. All rights reserved.
//

import Foundation

protocol BasePresenterDelegate {
    func showLoadingView()
    func hideLoadingView()
    func onError(_ message: String)
}

class BasePresenter<T: BasePresenterDelegate> {
    internal var delegate: T?
    
    func attach(_ view: T?) {
        delegate = view
    }
}
