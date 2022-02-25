//
//  Utils.swift
//  Watchlist
//
//  Created by Dennis Dimitrov on 22.02.22.
//

import Foundation

class Utils{
    static let jsonDecoder: JSONDecoder = {
        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        jsonDecoder.dataDecodingStrategy = .custom(dataFormatter) //needs fixing
        return jsonDecoder
    }()
    
    static let dataFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        return dateFormatter
    }()
}

