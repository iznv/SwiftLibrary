//
//  TableDirector+Replace.swift
//  
//
//  Created by Ivan Zinovyev on 25.01.2023.
//

import TableKit

public extension TableDirector {
    
    func replace(with sections: [TableSection],
                 shouldReload: Bool = true) {
        
        clear()
        append(sections: sections)
        
        if shouldReload {
            reload()
        }
    }
    
}
