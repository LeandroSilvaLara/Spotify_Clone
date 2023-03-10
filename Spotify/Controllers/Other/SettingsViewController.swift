//
//  SettingsViewController.swift
//  Spotify
//
//  Created by Leandro Lara on 31/01/23.
//

import UIKit

class SettingsViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {

    private let tableView: UITableView = {
        
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
        
    }()
    
    
    private var sections = [Section]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ConfigureModels()
        
        title = "Settings"
        view.backgroundColor = .systemBackground
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self

    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    
    private func ConfigureModels(){
        sections.append(Section(title: "Profile", options: [Option(title: "View Your Profile", handler: { [weak self] in
            DispatchQueue.main.async {
                self?.ViewProfile()
            }
        })]))
        sections.append(Section(title: "Account", options: [Option(title: "Sign Out ", handler: {[weak self] in
            
            DispatchQueue.main.async {
                self?.SignOutTapped()

            }
            
        })]))
        
    }
    
    private func ViewProfile(){
        
        let vc = ProfileViewController()
        vc.navigationItem.largeTitleDisplayMode = .never
        vc.title = "Profile"
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    private func SignOutTapped(){
        
        
        
    }
    


    
    
    //MARK: - TableView
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].options.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // model is -> index path for section then index path for option to get data for this cell "option"
        let model = sections[indexPath.section].options[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = model.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // call handler For cell
        let model = sections[indexPath.section].options[indexPath.row]
          model.handler()

    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let model = sections[section]
        return model.title
    }
    
    
}
