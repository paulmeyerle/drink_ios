//
//  TodoService.swift
//  mvvm
//
//  Created by Paul Meyerle on 2/9/17.
//  Copyright © 2017 Jetsetter. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift
import Moya

enum DrinkService {
    case searchDrinks(query: String)
}

extension DrinkService: TargetType {
    var baseURL: URL {
        return URL(string: "http://localhost:3000")!
    }

    var path: String {
        switch self {
        case .searchDrinks:
            return "/drinks"
        }
    }

    var method: Moya.Method {
        switch self {
        case .searchDrinks:
            return .get
        }
    }

    var parameters: [String: Any]? {
        switch self {
        case .searchDrinks(let query):
            return ["query": query]
        }
    }

    var parameterEncoding: ParameterEncoding {
        switch self {
        case .searchDrinks:
            return URLEncoding.default
        }
    }

    var sampleData: Data {
        switch self {
        case .searchDrinks:
            // swiftlint:disable:next line_length
            return "{}".data(using: .utf8)!
        }
    }

    var task: Task {
        switch self {
        case .searchDrinks:
            return .request
        }
    }
}
