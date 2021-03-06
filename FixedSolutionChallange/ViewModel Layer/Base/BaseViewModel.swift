//
//  BaseViewModel.swift
//  FixedSolutionChallange
//
//  Created by Alaa on 4/5/20.
//  Copyright © 2020 FixedSolution. All rights reserved.
//

import Foundation
import RxSwift

struct ViewIdentifier{
    var storyboardIdentifier:String!
    var ViewControllerIdentifier:String!
}

class BaseViewModel: NSObject {
    
    let bag = DisposeBag()
    
    let pushViewControllerSubject = PublishSubject<BaseViewModel>()
    let showAlertErrorSubject = PublishSubject<String>()

    let showLoadingSubject = PublishSubject<LoadingType>()
    let hideLoadingSubject = PublishSubject<LoadingType>()

    
    var viewIdentifier:ViewIdentifier!
    
    deinit {
        print("deinit \(String(describing: self))")
    }
}
