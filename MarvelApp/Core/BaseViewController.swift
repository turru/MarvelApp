//
//  BaseViewController.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//


import UIKit

@objc class BaseRepository: NSObject {
    
}

@objc class BaseInteractor : NSObject {
    
}

@objc class BasePresenter : NSObject {
    
}

@objc class BaseWireframe : NSObject {
    
}

@objc class BaseViewController : UIViewController {
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}

// MARK: Notify if app did enter background or will enter foreground
extension BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(notifyApplicationDidEnterBackground),
                                               name: UIApplication.didEnterBackgroundNotification,
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(notifyApplicationWillEnterForeground),
                                               name: UIApplication.willEnterForegroundNotification,
                                               object: nil)
    }
    
    @objc open func notifyApplicationDidEnterBackground() {
        
    }
    
    @objc open func notifyApplicationWillEnterForeground() {
        
    }
}
