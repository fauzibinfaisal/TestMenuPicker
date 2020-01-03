//
//  Menu.swift
//  TestMenuPicker
//
//  Created by Fauzi Fauzi on 03/01/20.
//  Copyright © 2020 fauzify. All rights reserved.
//

import Foundation

class Menu {
    var id: String = ""
    var title: String = ""
    var selected = false
    
    init(id: String, title: String, selected: Bool) {
        self.id = id
        self.title = title
        self.selected = selected
    }
    
    
    static func fetch()->[Menu]{
        let menuList = [Menu(id: "A01", title: "Topokki", selected: false),
                            Menu(id: "A02", title: "Sundubu", selected: false),
                            Menu(id: "A03", title: "Galbiting", selected: false),
                            Menu(id: "A04", title: "Beef BBQ", selected: false),
                            Menu(id: "A05", title: "Korean Fried Chicken", selected: false),
                            Menu(id: "A06", title: "Dakgalbi", selected: false),
                            Menu(id: "A07", title: "Bingsoo", selected: false),
                            Menu(id: "A08", title: "Ramyun", selected: false),
                            Menu(id: "A09", title: "Bulgogi", selected: false),
                            Menu(id: "A10", title: "Anyeong Set 1", selected: false),
                            Menu(id: "A11", title: "Nori", selected: false),
                            Menu(id: "A12", title: "Mandu", selected: false),
                            Menu(id: "A13", title: "Kimchi", selected: false),
                            Menu(id: "A14", title: "Beef", selected: false),
                            Menu(id: "A15", title: "Anyeong Set 2", selected: false),
                            Menu(id: "A16", title: "Choko Bingso", selected: false),
                            Menu(id: "A17", title: "Bokumbap", selected: false),
                            Menu(id: "A18", title: "Bulgogi Bibimbowl", selected: false),
                            Menu(id: "A19", title: "Classic Bingsoo", selected: false),
                            Menu(id: "B01", title: "Matcha", selected: false),
                            Menu(id: "B02", title: "Japchae", selected: false),
                            Menu(id: "B03", title: "Yoghurt Bingsoo", selected: false),
                            Menu(id: "B04", title: "Korean Lemonade", selected: false),
                            Menu(id: "B05", title: "Matcha Milk Tea", selected: false),
                            Menu(id: "B06", title: "Choco Banana Milk", selected: false),
                            Menu(id: "B07", title: "Jeju Orange Tea", selected: false),
                            Menu(id: "B08", title: "Apple Tea", selected: false),
                            Menu(id: "B09", title: "Mineral Water", selected: false),
                            Menu(id: "B10", title: "Tea", selected: false)]
        return menuList
    }

}


