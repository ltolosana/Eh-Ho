//
//  DetailTopicViewController.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 23/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import UIKit

class DetailTopicViewController: UIViewController {

    let viewModel: DetailTopicViewModel
    
    init (viewModel: DetailTopicViewModel) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.viewDidLoad()

    }

}

// VIEWMODEL COMMUNICATION
protocol DetailTopicViewControllerProtocol: class {
    
}

extension DetailTopicViewController: DetailTopicViewControllerProtocol {
    
}
