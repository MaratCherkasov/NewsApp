//
//  GeneralViewModel.swift
//  NewsApp
//
//  Created by Marat Cherkasov on 06.05.2023.
//

import UIKit

protocol GeneralViewModelProtocol {
    var reloadData: (() -> Void)? { get set }
    
    var numberOfCells: Int { get }
    
    func getArticle(for row: Int) -> ArticleCellViewModel
}

final class GeneralViewModel: GeneralViewModelProtocol {
    var reloadData: (() -> Void)?
    
    // MARK: - Properties
    var numberOfCells: Int {
        articles.count
    }
    
    private var articles: [ArticleResponseObject] = [] {
        didSet {
            reloadData?()
        }
    }
    
    init() {
        loadData()
    }
    
    func getArticle(for row: Int) -> ArticleCellViewModel {
        let article = articles[row]
        return ArticleCellViewModel(article: article)
    }
    
    private func loadData() {
        // TODO: load Data
        
        setupMockObjects()
    }
    
    private func setupMockObjects() {
        articles = [
            ArticleResponseObject(title: "First object title",
                                  description: "First object description in the mock object",
                                  urlImage: "...",
                                  publishedAt: "01.01.2023"),
            ArticleResponseObject(title: "Second object title",
                                  description: "Second object description in the mock object",
                                  urlImage: "...",
                                  publishedAt: "02.01.2023"),
            ArticleResponseObject(title: "Third object title",
                                  description: "Third object description in the mock object",
                                  urlImage: "...",
                                  publishedAt: "03.01.2023"),
            ArticleResponseObject(title: "Fourth object title",
                                  description: "Fourth object description in the mock object",
                                  urlImage: "...",
                                  publishedAt: "04.01.2023"),
            ArticleResponseObject(title: "Fifth object title",
                                  description: "Fifth object description in the mock object",
                                  urlImage: "...",
                                  publishedAt: "05.01.2023"),
        ]
    }
}
