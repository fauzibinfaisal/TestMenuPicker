//
//  NextViewController.swift
//  TestMenuPicker
//
//  Created by Fauzi Fauzi on 03/01/20.
//  Copyright © 2020 fauzify. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    var menuList = [Menu]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("menuList ",menuList.count)
        for (i, menu) in menuList.enumerated(){
            print("menu \(i+1) : \(menu.title)")
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
