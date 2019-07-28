//
//  TopicsViewController.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 16/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import UIKit

class TopicsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let viewModel: TopicsViewModel
    var topics: [Topic] = []
    
    init(topicsViewModel: TopicsViewModel) {
        self.viewModel = topicsViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Topics"
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 60

//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.identifier)

        viewModel.viewDidLoad()
    }

}

extension TopicsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

//        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.identifier, for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.identifier) ?? UITableViewCell(style: .subtitle, reuseIdentifier: UITableViewCell.identifier)
        
        cell.textLabel?.text = topics[indexPath.row].title
        cell.detailTextLabel?.text = "\(topics[indexPath.row].views) visitas"
        
        return cell
    }
}

extension TopicsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let id = topics[indexPath.row].id
        viewModel.didTapInTopic(id: id)
    }
        
}

// MARK: - ViewModel Comunication
protocol TopicsViewControllerProtocol: class {
    func showTopics(topics: [Topic])
//    func showLatestTopics(topics: [Topic])
    func showError(with message: String)
}

extension TopicsViewController: TopicsViewControllerProtocol {
    func showTopics(topics: [Topic]) {
        self.topics = topics
        self.tableView.reloadData()
    }
    
//    func showLatestTopics(topics: [Topic]) {
//        self.topics = topics
//        self.tableView.reloadData()
//    }
    
    func showError(with message: String) {
        // AQUI ENSEÑAMOS ALERTA
        print ("Error")
    }
}
