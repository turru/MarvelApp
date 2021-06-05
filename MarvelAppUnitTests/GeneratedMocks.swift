// MARK: - Mocks generated from file: MarvelApp/ModuleCharacterList/DataManager/CharacterListRepository.swift at 2021-06-05 14:07:38 +0000

//
//  CharacterListRepository.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//

import Cuckoo
@testable import MarvelApp

import Alamofire
import AlamofireObjectMapper
import Foundation
import PromiseKit
import SDOSAlamofire
import SDOSKeyedCodable


 class MockCharacterListRepositoryInputProtocol: CharacterListRepositoryInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = CharacterListRepositoryInputProtocol
    
     typealias Stubbing = __StubbingProxy_CharacterListRepositoryInputProtocol
     typealias Verification = __VerificationProxy_CharacterListRepositoryInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CharacterListRepositoryInputProtocol?

     func enableDefaultImplementation(_ stub: CharacterListRepositoryInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var remoteRequestHandler: CharacterListRepositoryOutputProtocol? {
        get {
            return cuckoo_manager.getter("remoteRequestHandler",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.remoteRequestHandler)
        }
        
        set {
            cuckoo_manager.setter("remoteRequestHandler",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.remoteRequestHandler = newValue)
        }
        
    }
    

    

    
    
    
     func retrieveDataList(page: Int) -> Promise<[CharacterBO]> {
        
    return cuckoo_manager.call("retrieveDataList(page: Int) -> Promise<[CharacterBO]>",
            parameters: (page),
            escapingParameters: (page),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.retrieveDataList(page: page))
        
    }
    

	 struct __StubbingProxy_CharacterListRepositoryInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var remoteRequestHandler: Cuckoo.ProtocolToBeStubbedOptionalProperty<MockCharacterListRepositoryInputProtocol, CharacterListRepositoryOutputProtocol> {
	        return .init(manager: cuckoo_manager, name: "remoteRequestHandler")
	    }
	    
	    
	    func retrieveDataList<M1: Cuckoo.Matchable>(page: M1) -> Cuckoo.ProtocolStubFunction<(Int), Promise<[CharacterBO]>> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: page) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCharacterListRepositoryInputProtocol.self, method: "retrieveDataList(page: Int) -> Promise<[CharacterBO]>", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CharacterListRepositoryInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var remoteRequestHandler: Cuckoo.VerifyOptionalProperty<CharacterListRepositoryOutputProtocol> {
	        return .init(manager: cuckoo_manager, name: "remoteRequestHandler", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func retrieveDataList<M1: Cuckoo.Matchable>(page: M1) -> Cuckoo.__DoNotUse<(Int), Promise<[CharacterBO]>> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: page) { $0 }]
	        return cuckoo_manager.verify("retrieveDataList(page: Int) -> Promise<[CharacterBO]>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CharacterListRepositoryInputProtocolStub: CharacterListRepositoryInputProtocol {
    
    
     var remoteRequestHandler: CharacterListRepositoryOutputProtocol? {
        get {
            return DefaultValueRegistry.defaultValue(for: (CharacterListRepositoryOutputProtocol?).self)
        }
        
        set { }
        
    }
    

    

    
     func retrieveDataList(page: Int) -> Promise<[CharacterBO]>  {
        return DefaultValueRegistry.defaultValue(for: (Promise<[CharacterBO]>).self)
    }
    
}



 class MockCharacterListRepositoryOutputProtocol: CharacterListRepositoryOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = CharacterListRepositoryOutputProtocol
    
     typealias Stubbing = __StubbingProxy_CharacterListRepositoryOutputProtocol
     typealias Verification = __VerificationProxy_CharacterListRepositoryOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CharacterListRepositoryOutputProtocol?

     func enableDefaultImplementation(_ stub: CharacterListRepositoryOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func onPostsRetrieved(_ posts: [CharacterBO])  {
        
    return cuckoo_manager.call("onPostsRetrieved(_: [CharacterBO])",
            parameters: (posts),
            escapingParameters: (posts),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.onPostsRetrieved(posts))
        
    }
    
    
    
     func onError()  {
        
    return cuckoo_manager.call("onError()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.onError())
        
    }
    

	 struct __StubbingProxy_CharacterListRepositoryOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func onPostsRetrieved<M1: Cuckoo.Matchable>(_ posts: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([CharacterBO])> where M1.MatchedType == [CharacterBO] {
	        let matchers: [Cuckoo.ParameterMatcher<([CharacterBO])>] = [wrap(matchable: posts) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCharacterListRepositoryOutputProtocol.self, method: "onPostsRetrieved(_: [CharacterBO])", parameterMatchers: matchers))
	    }
	    
	    func onError() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCharacterListRepositoryOutputProtocol.self, method: "onError()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CharacterListRepositoryOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func onPostsRetrieved<M1: Cuckoo.Matchable>(_ posts: M1) -> Cuckoo.__DoNotUse<([CharacterBO]), Void> where M1.MatchedType == [CharacterBO] {
	        let matchers: [Cuckoo.ParameterMatcher<([CharacterBO])>] = [wrap(matchable: posts) { $0 }]
	        return cuckoo_manager.verify("onPostsRetrieved(_: [CharacterBO])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onError() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("onError()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CharacterListRepositoryOutputProtocolStub: CharacterListRepositoryOutputProtocol {
    

    

    
     func onPostsRetrieved(_ posts: [CharacterBO])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func onError()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockCharacterListRepository: CharacterListRepository, Cuckoo.ClassMock {
    
     typealias MocksType = CharacterListRepository
    
     typealias Stubbing = __StubbingProxy_CharacterListRepository
     typealias Verification = __VerificationProxy_CharacterListRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: CharacterListRepository?

     func enableDefaultImplementation(_ stub: CharacterListRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var remoteRequestHandler: CharacterListRepositoryOutputProtocol? {
        get {
            return cuckoo_manager.getter("remoteRequestHandler",
                superclassCall:
                    
                    super.remoteRequestHandler
                    ,
                defaultCall: __defaultImplStub!.remoteRequestHandler)
        }
        
        set {
            cuckoo_manager.setter("remoteRequestHandler",
                value: newValue,
                superclassCall:
                    
                    super.remoteRequestHandler = newValue
                    ,
                defaultCall: __defaultImplStub!.remoteRequestHandler = newValue)
        }
        
    }
    

    

    
    
    
     override func retrieveDataList(page: Int) -> Promise<[CharacterBO]> {
        
    return cuckoo_manager.call("retrieveDataList(page: Int) -> Promise<[CharacterBO]>",
            parameters: (page),
            escapingParameters: (page),
            superclassCall:
                
                super.retrieveDataList(page: page)
                ,
            defaultCall: __defaultImplStub!.retrieveDataList(page: page))
        
    }
    

	 struct __StubbingProxy_CharacterListRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var remoteRequestHandler: Cuckoo.ClassToBeStubbedOptionalProperty<MockCharacterListRepository, CharacterListRepositoryOutputProtocol> {
	        return .init(manager: cuckoo_manager, name: "remoteRequestHandler")
	    }
	    
	    
	    func retrieveDataList<M1: Cuckoo.Matchable>(page: M1) -> Cuckoo.ClassStubFunction<(Int), Promise<[CharacterBO]>> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: page) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCharacterListRepository.self, method: "retrieveDataList(page: Int) -> Promise<[CharacterBO]>", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CharacterListRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var remoteRequestHandler: Cuckoo.VerifyOptionalProperty<CharacterListRepositoryOutputProtocol> {
	        return .init(manager: cuckoo_manager, name: "remoteRequestHandler", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func retrieveDataList<M1: Cuckoo.Matchable>(page: M1) -> Cuckoo.__DoNotUse<(Int), Promise<[CharacterBO]>> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: page) { $0 }]
	        return cuckoo_manager.verify("retrieveDataList(page: Int) -> Promise<[CharacterBO]>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CharacterListRepositoryStub: CharacterListRepository {
    
    
     override var remoteRequestHandler: CharacterListRepositoryOutputProtocol? {
        get {
            return DefaultValueRegistry.defaultValue(for: (CharacterListRepositoryOutputProtocol?).self)
        }
        
        set { }
        
    }
    

    

    
     override func retrieveDataList(page: Int) -> Promise<[CharacterBO]>  {
        return DefaultValueRegistry.defaultValue(for: (Promise<[CharacterBO]>).self)
    }
    
}


// MARK: - Mocks generated from file: MarvelApp/ModuleCharacterList/Interactor/CharacterListInteractor.swift at 2021-06-05 14:07:38 +0000

//
//  CharacterListInteractor.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//
import Cuckoo
@testable import MarvelApp

import PromiseKit


 class MockCharacterListInteractorOutputProtocol: CharacterListInteractorOutputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = CharacterListInteractorOutputProtocol
    
     typealias Stubbing = __StubbingProxy_CharacterListInteractorOutputProtocol
     typealias Verification = __VerificationProxy_CharacterListInteractorOutputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CharacterListInteractorOutputProtocol?

     func enableDefaultImplementation(_ stub: CharacterListInteractorOutputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func didRetrievePosts(_ posts: [CharacterBO])  {
        
    return cuckoo_manager.call("didRetrievePosts(_: [CharacterBO])",
            parameters: (posts),
            escapingParameters: (posts),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.didRetrievePosts(posts))
        
    }
    
    
    
     func onError()  {
        
    return cuckoo_manager.call("onError()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.onError())
        
    }
    

	 struct __StubbingProxy_CharacterListInteractorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func didRetrievePosts<M1: Cuckoo.Matchable>(_ posts: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([CharacterBO])> where M1.MatchedType == [CharacterBO] {
	        let matchers: [Cuckoo.ParameterMatcher<([CharacterBO])>] = [wrap(matchable: posts) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCharacterListInteractorOutputProtocol.self, method: "didRetrievePosts(_: [CharacterBO])", parameterMatchers: matchers))
	    }
	    
	    func onError() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCharacterListInteractorOutputProtocol.self, method: "onError()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CharacterListInteractorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func didRetrievePosts<M1: Cuckoo.Matchable>(_ posts: M1) -> Cuckoo.__DoNotUse<([CharacterBO]), Void> where M1.MatchedType == [CharacterBO] {
	        let matchers: [Cuckoo.ParameterMatcher<([CharacterBO])>] = [wrap(matchable: posts) { $0 }]
	        return cuckoo_manager.verify("didRetrievePosts(_: [CharacterBO])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onError() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("onError()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CharacterListInteractorOutputProtocolStub: CharacterListInteractorOutputProtocol {
    

    

    
     func didRetrievePosts(_ posts: [CharacterBO])   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func onError()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockCharacterListInteractorInputProtocol: CharacterListInteractorInputProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = CharacterListInteractorInputProtocol
    
     typealias Stubbing = __StubbingProxy_CharacterListInteractorInputProtocol
     typealias Verification = __VerificationProxy_CharacterListInteractorInputProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CharacterListInteractorInputProtocol?

     func enableDefaultImplementation(_ stub: CharacterListInteractorInputProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var presenter: CharacterListInteractorOutputProtocol? {
        get {
            return cuckoo_manager.getter("presenter",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.presenter)
        }
        
        set {
            cuckoo_manager.setter("presenter",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.presenter = newValue)
        }
        
    }
    
    
    
     var repository: CharacterListRepositoryInputProtocol? {
        get {
            return cuckoo_manager.getter("repository",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.repository)
        }
        
        set {
            cuckoo_manager.setter("repository",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.repository = newValue)
        }
        
    }
    

    

    
    
    
     func retrieveDataList(page: Int)  {
        
    return cuckoo_manager.call("retrieveDataList(page: Int)",
            parameters: (page),
            escapingParameters: (page),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.retrieveDataList(page: page))
        
    }
    

	 struct __StubbingProxy_CharacterListInteractorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var presenter: Cuckoo.ProtocolToBeStubbedOptionalProperty<MockCharacterListInteractorInputProtocol, CharacterListInteractorOutputProtocol> {
	        return .init(manager: cuckoo_manager, name: "presenter")
	    }
	    
	    
	    var repository: Cuckoo.ProtocolToBeStubbedOptionalProperty<MockCharacterListInteractorInputProtocol, CharacterListRepositoryInputProtocol> {
	        return .init(manager: cuckoo_manager, name: "repository")
	    }
	    
	    
	    func retrieveDataList<M1: Cuckoo.Matchable>(page: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: page) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCharacterListInteractorInputProtocol.self, method: "retrieveDataList(page: Int)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CharacterListInteractorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var presenter: Cuckoo.VerifyOptionalProperty<CharacterListInteractorOutputProtocol> {
	        return .init(manager: cuckoo_manager, name: "presenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var repository: Cuckoo.VerifyOptionalProperty<CharacterListRepositoryInputProtocol> {
	        return .init(manager: cuckoo_manager, name: "repository", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func retrieveDataList<M1: Cuckoo.Matchable>(page: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: page) { $0 }]
	        return cuckoo_manager.verify("retrieveDataList(page: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CharacterListInteractorInputProtocolStub: CharacterListInteractorInputProtocol {
    
    
     var presenter: CharacterListInteractorOutputProtocol? {
        get {
            return DefaultValueRegistry.defaultValue(for: (CharacterListInteractorOutputProtocol?).self)
        }
        
        set { }
        
    }
    
    
     var repository: CharacterListRepositoryInputProtocol? {
        get {
            return DefaultValueRegistry.defaultValue(for: (CharacterListRepositoryInputProtocol?).self)
        }
        
        set { }
        
    }
    

    

    
     func retrieveDataList(page: Int)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockCharacterListInteractor: CharacterListInteractor, Cuckoo.ClassMock {
    
     typealias MocksType = CharacterListInteractor
    
     typealias Stubbing = __StubbingProxy_CharacterListInteractor
     typealias Verification = __VerificationProxy_CharacterListInteractor

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: CharacterListInteractor?

     func enableDefaultImplementation(_ stub: CharacterListInteractor) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var presenter: CharacterListInteractorOutputProtocol? {
        get {
            return cuckoo_manager.getter("presenter",
                superclassCall:
                    
                    super.presenter
                    ,
                defaultCall: __defaultImplStub!.presenter)
        }
        
        set {
            cuckoo_manager.setter("presenter",
                value: newValue,
                superclassCall:
                    
                    super.presenter = newValue
                    ,
                defaultCall: __defaultImplStub!.presenter = newValue)
        }
        
    }
    
    
    
     override var repository: CharacterListRepositoryInputProtocol? {
        get {
            return cuckoo_manager.getter("repository",
                superclassCall:
                    
                    super.repository
                    ,
                defaultCall: __defaultImplStub!.repository)
        }
        
        set {
            cuckoo_manager.setter("repository",
                value: newValue,
                superclassCall:
                    
                    super.repository = newValue
                    ,
                defaultCall: __defaultImplStub!.repository = newValue)
        }
        
    }
    

    

    
    
    
     override func retrieveDataList(page: Int)  {
        
    return cuckoo_manager.call("retrieveDataList(page: Int)",
            parameters: (page),
            escapingParameters: (page),
            superclassCall:
                
                super.retrieveDataList(page: page)
                ,
            defaultCall: __defaultImplStub!.retrieveDataList(page: page))
        
    }
    

	 struct __StubbingProxy_CharacterListInteractor: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var presenter: Cuckoo.ClassToBeStubbedOptionalProperty<MockCharacterListInteractor, CharacterListInteractorOutputProtocol> {
	        return .init(manager: cuckoo_manager, name: "presenter")
	    }
	    
	    
	    var repository: Cuckoo.ClassToBeStubbedOptionalProperty<MockCharacterListInteractor, CharacterListRepositoryInputProtocol> {
	        return .init(manager: cuckoo_manager, name: "repository")
	    }
	    
	    
	    func retrieveDataList<M1: Cuckoo.Matchable>(page: M1) -> Cuckoo.ClassStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: page) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCharacterListInteractor.self, method: "retrieveDataList(page: Int)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CharacterListInteractor: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var presenter: Cuckoo.VerifyOptionalProperty<CharacterListInteractorOutputProtocol> {
	        return .init(manager: cuckoo_manager, name: "presenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var repository: Cuckoo.VerifyOptionalProperty<CharacterListRepositoryInputProtocol> {
	        return .init(manager: cuckoo_manager, name: "repository", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func retrieveDataList<M1: Cuckoo.Matchable>(page: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: page) { $0 }]
	        return cuckoo_manager.verify("retrieveDataList(page: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CharacterListInteractorStub: CharacterListInteractor {
    
    
     override var presenter: CharacterListInteractorOutputProtocol? {
        get {
            return DefaultValueRegistry.defaultValue(for: (CharacterListInteractorOutputProtocol?).self)
        }
        
        set { }
        
    }
    
    
     override var repository: CharacterListRepositoryInputProtocol? {
        get {
            return DefaultValueRegistry.defaultValue(for: (CharacterListRepositoryInputProtocol?).self)
        }
        
        set { }
        
    }
    

    

    
     override func retrieveDataList(page: Int)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

