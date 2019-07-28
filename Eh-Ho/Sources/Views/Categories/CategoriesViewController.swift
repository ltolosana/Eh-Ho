//
//  CategoriesViewController.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 24/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import UIKit

class CategoriesViewController: UITableViewController {
    
    let viewModel: CategoriesViewModel
    var categories: [Category] = []
    
    
    
    init(categoriesViewModel: CategoriesViewModel) {
        self.viewModel = categoriesViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 60
        
        // Pull To Refresh
        refreshControl = UIRefreshControl(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        refreshControl?.attributedTitle = NSAttributedString(string: "Refrescante!!!")
        refreshControl?.addTarget(self, action: #selector(refresh(_:)), for: .valueChanged)
        self.tableView.addSubview(refreshControl!)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.identifier)
        viewModel.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return categories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.identifier, for: indexPath)
        cell.textLabel?.text = categories[indexPath.row].name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let id = categories[indexPath.row].id
        viewModel.didTapInCategory(id: id)
    }

}


// MARK: - ViewModel Comunication
protocol CategoriesViewControllerProtocol: class {
    func showCategories(categories: [Category])
    func showError(with message: String)
}

extension CategoriesViewController: CategoriesViewControllerProtocol {
    func showCategories(categories: [Category]) {
        self.categories = categories
        self.tableView.reloadData()
    }
    
    func showError(with message: String) {
        // AQUI ENSEÑAMOS ALERTA
        print ("Error")
    }
}


// MARK: - Pull to Refresh

extension CategoriesViewController {
    
    @objc private func refresh(_ sender: Any) {
        viewModel.viewDidLoad()
        refreshControl?.endRefreshing()
    }
}
