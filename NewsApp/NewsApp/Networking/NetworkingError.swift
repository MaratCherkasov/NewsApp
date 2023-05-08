//
//  NetworkingError.swift
//  NewsApp
//
//  Created by Marat Cherkasov on 06.05.2023.
//

import UIKit

enum NetworkingError: Error {
    case networkingError(_ error: Error)
    case unknown
}
