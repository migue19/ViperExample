//
//  NoticeRouter.swift
//  ViperExample
//
//  Created by Miguel Mexicano Herrera on 09/10/18.
//  Copyright © 2018 Miguel Mexicano Herrera. All rights reserved.
//

import Foundation

class NoticeRouter: PresenterToRouterProtocol{
    
    static func createModule() -> NoticeViewController {
        let view = mainstoryboard.instantiateViewController(withIdentifier: "MyViewController") as! NoticeViewController
        
        let presenter: ViewToPresenterProtocol & InteractorToPresenterProtocol = NoticePresenter()
        let interactor: PresenterToInteractorProtocol = NoticeInteractor()
        let router:PresenterToRouterProtocol = NoticeRouter()
        
        view.presentor = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
    
    
    
    
    func pushToMovieScreen(navigationConroller: UINavigationController) {
        <#code#>
    }
    
    
    
    
}
