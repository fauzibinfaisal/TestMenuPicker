//
//  ViewController.swift
//  TestMenuPicker
//
//  Created by Fauzi Fauzi on 02/01/20.
//  Copyright © 2020 fauzify. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tabelView: UITableView!
    var menuList = [Menu]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuList = Menu.fetch()
        
        tabelView.register(UINib.init(nibName: "DoneTableViewCell", bundle: nil), forCellReuseIdentifier:"DoneTableViewCell")
        
        tabelView.rowHeight = UITableView.automaticDimension
        tabelView.estimatedRowHeight = 600

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is NextViewController
            {
                let vc = segue.destination as? NextViewController
                vc?.menuList = menuList.filter{$0.selected}
            }
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell") as! DetailTableViewCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell") as! MenuTableViewCell
            cell.menuList = menuList
            cell.delegate = self
            return cell

        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DoneTableViewCell") as! DoneTableViewCell
            cell.delegate = self
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: K.String.detailCell) as! DetailTableViewCell
            return cell.bounds.height
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: K.String.menuCell) as! MenuTableViewCell
            return cell.bounds.height

        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: K.String.doneTableViewCell) as! DoneTableViewCell
            return cell.bounds.height

        }
    }
}

extension ViewController: MenuTableViewCellDelegate{
    func didSelectedMenu(menu: Menu) {
        if let tempMenu = menuList.first(where: {$0.id == menu.id}) {
//            print("selected \(menu.title) \(menu.selected)")
            if tempMenu.selected {
                menuList.filter {$0.id == menu.id}.first?.selected = false
            } else {
                menuList.filter {$0.id == menu.id}.first?.selected = true
            }
            tabelView.reloadData()
        } else {
           print("menu not found")
        }
    }
}

extension ViewController: DoneDelegate{
    func didDoneTapped() {
        performSegue(withIdentifier: K.String.toNextSegue, sender: self)
    }
}

