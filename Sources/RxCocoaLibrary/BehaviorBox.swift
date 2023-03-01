//
//  BehaviorBox.swift
//  
//
//  Created by Ivan Zinovyev on 24.01.2023.
//

import RxCocoa
import RxSwift

public class BehaviorBox<T> {

    private let relay: BehaviorRelay<T>

    var value: T {
        get {
            return relay.value
        }
        set {
            relay.accept(newValue)
        }
    }

    var observable: Observable<T> {
        return relay.asObservable()
    }

    var driver: Driver<T> {
        return relay.asDriver()
    }

    init(value: T) {
        relay = BehaviorRelay(value: value)
    }

    func bind(from observable: Observable<T>,
              disposeBag: DisposeBag) {

        observable.bind(to: relay)
            .disposed(by: disposeBag)
    }
}

public extension BehaviorBox where T == Bool {

    func toggle() {
        value.toggle()
    }
}
