//
//  NewsResponseObject.swift
//  NewsApp
//
//  Created by Marat Cherkasov on 06.05.2023.
//

import UIKit

struct NewsResponseObject: Codable {
    let totalResults: Int
    let articles: [ArticleResponseObject]
    
    enum CodingKeys: CodingKey {
        case totalResults
        case articles
    }
}
