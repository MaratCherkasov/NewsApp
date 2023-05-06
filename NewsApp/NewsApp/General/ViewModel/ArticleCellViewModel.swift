//
//  ArticleCellViewModel.swift
//  NewsApp
//
//  Created by Marat Cherkasov on 06.05.2023.
//

import UIKit

struct ArticleCellViewModel {
    let title: String
    let description: String
    let date: String
    
    init(article: ArticleResponseObject) {
        title = article.title
        description = article.description
        date = article.publishedAt
    }
}
