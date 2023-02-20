//
//  DataStore.swift
//  Animation--3.1
//
//  Created by Tatsiana Pauliukova on 20.02.23.
//

import SpringAnimation

class DataStore {
    
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases 
    let curves = AnimationCurve.allCases
    
    private init() {}
    
}
