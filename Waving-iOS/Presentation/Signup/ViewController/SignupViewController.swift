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
//            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300)
        ])
        return scrollView
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .orange
        
        setupView()
    }
    
    private func setupView() {
        
        let label1 = UILabel()
        label1.text = "Label 1"
        stackView.addArrangedSubview(label1)

        let label2 = UILabel()
        label2.text = "Label 2"
        stackView.addArrangedSubview(label2)
        
        let label3 = UILabel()
        label3.text = "Label 3"
        stackView.addArrangedSubview(label3)
        
        let label4 = UILabel()
        label4.text = "Label 4"
        stackView.addArrangedSubview(label4)
        
        let label5 = UILabel()
        label5.text = "Label 5"
        stackView.addArrangedSubview(label5)
        
        let label6 = UILabel()
        label6.text = "Label 6"
        stackView.addArrangedSubview(label6)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true

        scrollView.contentSize = stackView.bounds.size

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
