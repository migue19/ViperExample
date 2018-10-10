//
//  NoticeProtocols.swift
//  ViperExample
//
//  Created by Miguel Mexicano Herrera on 09/10/18.
//  Copyright © 2018 Miguel Mexicano Herrera. All rights reserved.
//

import Foundation
import UIKit



protocol ViewToPresenterProtocol: class{
    var view: PresenterToViewProtocol? {get set}
    var interactor: PresenterToInteractorProtocol? {get set}
    var router: PresenterToRouterProtocol? {get set}
    
    func startFetchingNotice()
    func showMovieController(navigationController:UINavigationController)
}


protocol PresenterToViewProtocol:class {
    func showNotice(noticeArray: Array<NoticeModel>)
    func showError()
}

protocol PresenterToInteractorProtocol:class{
    var presenter: InteractorToPresenterProtocol? {get set}
    func fetchNotice()
    
}

protocol InteractorToPresenterProtocol {
    func noticeFetchedSuccess(noticeModelArray:Array<NoticeModel>)
    func noticeFetchFailed()
}

protocol PresenterToRouterProtocol: class {
    static func createModule()-> NoticeViewController
    func pushToMovieScreen(navigationConroller:UINavigationController)
}



