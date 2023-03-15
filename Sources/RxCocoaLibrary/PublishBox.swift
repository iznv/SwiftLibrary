//
//  PublishBox.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import RxCocoa
import RxSwift

public class PublishBox<T> {

    private let relay = PublishRelay<T>()

    func emit(_ value: T) {
        relay.accept(value)
    }

    var observable: Observable<T> {
        return relay.asObservable()
    }

    var driver: Driver<T> {
        return relay.asDriver(onErrorDriveWith: .empty())
    }
    
    public init() { }

}

public extension PublishBox where T == Void {

    func emit() {
        emit(())
    }

}
