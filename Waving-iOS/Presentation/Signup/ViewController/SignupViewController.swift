//
//  SignupViewController.swift
//  Waving-iOS
//
//  Created by Jane Choi on 2023/06/03.
//

import UIKit

final class SignupViewController: UIViewController {

    lazy private var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    lazy private var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)

        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        return scrollView
    }()
    
    lazy private var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy private var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 10
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        return stackView
    }()
    
    lazy private var userInputView: WVSignupInputView = {
        let view = WVSignupInputView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy private var buttonContainerView: UIView = {
        let containerView = UIView()
        let buttonView = WVButton()
        let buttomModel = WVButtonModel { [weak self] in
            guard let self else { return }
            self.stackView.removeFromSuperview()
            self.contentView.addSubview(self.userInputView)
            self.userInputView.snp.makeConstraints { make in
                make.top.equalToSuperview()
                make.leading.equalToSuperview()
                make.trailing.equalToSuperview()
            }
        }
        buttonView.setup(model: buttomModel)
        containerView.addSubview(buttonView)
        
        buttonView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(50)
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        return containerView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .orange
        
        setupView()
    }
    
    private func setupView() {
//        self.navigationController?.navigationBar.isTranslucent = false
//        self.extendedLayoutIncludesOpaqueBars = false
        scrollView.addSubview(contentView)
//        NSLayoutConstraint.activate([
//            contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
//            contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
//            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
//            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor)
//        ])
//        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
//        let contentViewHeight = contentView.heightAnchor.constraint(greaterThanOrEqualTo: view.heightAnchor)
//        contentViewHeight.priority = .defaultLow
//        contentViewHeight.isActive = true
        
        contentView.snp.makeConstraints { make in
            make.leading.equalTo(scrollView.contentLayoutGuide)
            make.trailing.equalTo(scrollView.contentLayoutGuide)
            make.top.equalTo(scrollView.contentLayoutGuide)
            make.bottom.equalTo(scrollView.contentLayoutGuide)
            make.width.equalTo(scrollView)
            make.height.equalTo(scrollView).priority(.low)
        }
        
        view.addSubview(buttonContainerView)
        buttonContainerView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        
        let imageContainerView = UIView()
        let logoImageView = UIImageView()
        if let image = UIImage(named: "intro_logo") {
            logoImageView.image = image
        }
        imageContainerView.addSubview(logoImageView)
        logoImageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        stackView.addArrangedSubview(imageContainerView)
        
        let imageContainerView2 = UIView()
        let logoImageView2 = UIImageView()
        if let image = UIImage(named: "intro_logo") {
            logoImageView2.image = image
        }
        imageContainerView2.addSubview(logoImageView2)
        logoImageView2.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        stackView.addArrangedSubview(imageContainerView2)
        
        let imageContainerView3 = UIView()
        let logoImageView3 = UIImageView()
        if let image = UIImage(named: "intro_logo") {
            logoImageView3.image = image
        }
        imageContainerView3.addSubview(logoImageView3)
        logoImageView3.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        stackView.addArrangedSubview(imageContainerView3)
        
        let imageContainerView4 = UIView()
        let logoImageView4 = UIImageView()
        if let image = UIImage(named: "intro_logo") {
            logoImageView4.image = image
        }
        imageContainerView4.addSubview(logoImageView4)
        logoImageView4.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        stackView.addArrangedSubview(imageContainerView4)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true

        contentView.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])

    }
}

extension SignupViewController: UITableViewDelegate {
    
}

extension SignupViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SignupViewCell", for: indexPath) as! SignupViewCell

        return cell
    }
    
    
}
