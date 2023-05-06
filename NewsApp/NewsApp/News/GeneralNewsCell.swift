//
//  GeneralNewsCell.swift
//  NewsApp
//
//  Created by Marat Cherkasov on 30.04.2023.
//

import UIKit
import SnapKit

final class GeneralNewsCell: UIViewController {
    // MARK: - GUI Variables
    private lazy var scrollView: UIScrollView = {
       let view = UIScrollView()
        
        view.showsVerticalScrollIndicator = false
        
        return view
    }()
    
    private lazy var contentView: UIView = UIView()
    
    private lazy var imageView: UIImageView = {
        let view = UIImageView()
        
        view.image = UIImage(named: "image") ?? UIImage.add
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        
        return view
    }()
    
    private lazy var dateLabel: UILabel = {
       let label = UILabel()
        
        label.text = "30.04.2023"
        label.font = .systemFont(ofSize: 12)
        label.textColor = .lightGray
        
        return label
    }()
    
    private lazy var titleLabel: UILabel = {
       let label = UILabel()
        
        label.text = "Insider shared layouts of redesigned Wallet and Health apps for iOS 17"
        label.font = .boldSystemFont(ofSize: 22)
        label.numberOfLines = 0
        label.textColor = .black
        
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        
        label.text = """
A user under the nickname @Analyst941 posted mockups of the redesigned Wallet and Health apps on Twitter. According to him, this is exactly how this software will look in iOS 17.\n
The bottom menu will appear in the Wallet application: through it, you can go to the list of saved digital keys and ids in one click. In addition, a button will appear to open the list of transactions on the Apple Card. The built-in search will help you quickly find the desired content in the application.\n
The Summary section in the Health application will undergo a redesign, receiving cards with visual data — graphs and tables. It displays data on physical activity, heart rate, sleep quality, body weight, as well as other information.
"""
        label.font = .systemFont(ofSize: 15)
        label.numberOfLines = 0
        label.textColor = .black
        
        return label
    }()
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    // MARK: - Private methods
    private func setupUI() {
        view.backgroundColor = .white
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubviews([
        imageView,
        dateLabel,
        titleLabel,
        descriptionLabel
        ])
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        contentView.snp.makeConstraints { make in
            make.width.edges.equalToSuperview()
        }
        
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(5)
        }
        
        dateLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(5)
            make.leading.trailing.equalToSuperview().inset(5)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(dateLabel.snp.bottom).offset(15)
            make.leading.trailing.equalToSuperview().inset(5)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(15)
            make.leading.trailing.equalToSuperview().inset(5)
            make.bottom.equalToSuperview().inset(5)
        }
    }
}
