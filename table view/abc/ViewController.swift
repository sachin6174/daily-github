//
//  ViewController.swift
//  abc
//
//  Created by sachin kumar on 28/01/26.
//

import Cocoa

class ViewController: NSViewController , NSTableViewDataSource, NSTableViewDelegate{

    @IBOutlet weak var tableview: NSTableView!
    var tableValue  : [[Int : String]] = [
        [1: "sachin"],
        [2: "bunty"],
        [3: "bunsadfty"],
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
        // Do any additional setup after loading the view.
       
    }
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return tableValue.count
    }
    
    func tableView(_ tableView: NSTableView,
                   viewFor tableColumn: NSTableColumn?,
                   row: Int) -> NSView? {

        let cell = tableView.makeView(
            withIdentifier: tableColumn!.identifier,
            owner: self
        ) as? NSTableCellView

        let dict = tableValue[row]
        let key = dict.keys.first!
        let value = dict[key]!

        if tableColumn?.identifier.rawValue == "idColumn" {
            cell?.textField?.stringValue = "\(key)"
        } else if tableColumn?.identifier.rawValue == "nameColumn" {
            cell?.textField?.stringValue = value
        }

        return cell
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

