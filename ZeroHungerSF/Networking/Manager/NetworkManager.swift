//
//  NetworkManager.swift
//  ZeroHungerSF
//
//  Created by Jackson Ho on 4/6/19.
//  Copyright © 2019 Jackson Ho. All rights reserved.
//

import Foundation

enum NetworkEnvironment {
    case qa
    case production
    case staging
}

struct NetworkManager {
    
    static let environment: NetworkEnvironment = .production
    
    enum NetworkReponse: String {
        case success
        case authenticationError = "You need to be authenticated first."
        case badRequest = "Bad Request"
        case outdated = "The url you requested is outdated."
        case failed = "Network request failed."
        case noData = "Response returned with no data to decode."
        case unableToDecode = "We could not decode the response."
    }
    
    enum Result<String> {
        case success
        case failure(String)
    }
    
    fileprivate func handleNetworkResponse(_ response: HTTPURLResponse) -> Result<String>{
        switch response.statusCode {
        case 200...299: return .success
        case 401...500: return .failure(NetworkReponse.authenticationError.rawValue)
        case 501...599: return .failure(NetworkReponse.badRequest.rawValue)
        case 600: return .failure(NetworkReponse.outdated.rawValue)
        default: return .failure(NetworkReponse.failed.rawValue)
        }
    }
}
