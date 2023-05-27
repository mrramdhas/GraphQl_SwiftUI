//
//  NetworkService.swift
//  SpaceX
//
//  Created by Ramdhas on 2023-05-27.
//

import Foundation
import Apollo

class NetworkService {
    static let shared = NetworkService()
    lazy var apollo = ApolloClient(url: URL(string: "https://spacex-production.up.railway.app/")!)
    
    private init() {
        
    }
}
