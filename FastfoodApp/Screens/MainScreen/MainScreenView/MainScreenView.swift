//
//  MainScreenView.swift
//  FastfoodApp
//
//  Created by Artem on 5/19/18.
//  Copyright © 2018 major-food. All rights reserved.
//

import UIKit


protocol MainScreenViewDelegate : class {
    
    func didSelectRowWithModel(_ model: Food)
    func menuPressed()
    func cartPressed()
    func splashPressed()
    
}


class MainScreenView: UIView {
    
    weak var delegate: MainScreenViewDelegate?
    
    var dataSource = AppDelegate.instance().dataSource

    @IBOutlet var mainContainer: UIView!
    @IBOutlet weak var topBar: UIView!
    @IBOutlet weak var splashView: UIView!
    @IBOutlet weak var splashButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchTextfield: UITextField!
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        initialSetup()
        
    }
    
 
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        initialSetup()
    }
    
    
    private func initialSetup() {
        
        configureView()
        setupTableView()
        
    }
    
    
    private func configureView() {
        
        Bundle.main.loadNibNamed("MainScreenView", owner: self, options: nil)
        addSubview(mainContainer)
        mainContainer.frame = self.bounds
        mainContainer.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
    }
    
    
    private func setupTableView() {
        
        tableView.rowHeight = UITableViewAutomaticDimension
        //tableView.estimatedRowHeight = 150.0
        tableView.register(UINib(nibName: "MainTableCell", bundle: nil), forCellReuseIdentifier: MainTableCell.identifier)
        // for scrollViewDidScroll
        tableView.contentInset = UIEdgeInsetsMake(150, 0, 0, 0)
        
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let y = 150 - (scrollView.contentOffset.y + 150)
        let height = min(max(y, 0), 200)
        
        splashView.frame = CGRect(x: 0, y: 50,
                               width: UIScreen.main.bounds.size.width,
                               height: height)
        
        splashButton.frame = CGRect(x: 0, y: 50,
                                 width: UIScreen.main.bounds.size.width,
                                 height: height)
        
    }
    
    
    @IBAction func menuPressed(_ sender: UIButton) {
        
        delegate?.menuPressed()
        
    }
    
    
    @IBAction func cartPressed(_ sender: UIButton) {
        
        delegate?.cartPressed()
        
    }
    
    
    @IBAction func splashPressed(_ sender: UIButton) {
        
        delegate?.splashPressed()
        
    }
    
}

// MARK: - DataSource
extension MainScreenView : UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataSource?.data.count ?? 0
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let queueCell = tableView.dequeueReusableCell(withIdentifier: MainTableCell.identifier, for: indexPath) as? MainTableCell
        
        guard let cell = queueCell else { return UITableViewCell() }
        guard let food = dataSource?.data[indexPath.row] else { return UITableViewCell() }
        
        setupCell(cell, image: food.image, title: food.title, description: food.description, price: food.price)
        
        return cell
        
    }
    
    
    private func setupCell(_ cell: MainTableCell, image: Image, title: String, description: String, price: Double) {
        
        image.getImage { (image) in
            DispatchQueue.main.async {
                cell.imgView.image = image
            }
        }
        cell.titleLbl.text = title
        cell.descriptionLbl.text = description
        cell.priceLbl.text = price.description + " ₽"
        
    }
    
    
}

// MARK: - Delegate
extension MainScreenView : UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let food = dataSource?.data[indexPath.row] else { return }
        delegate?.didSelectRowWithModel(food)
        
    }
    
    
}

