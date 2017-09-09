
//
//  HWHBaseTableC.swift
//  SwiftPractitioner
//
//  Created by LouisHan on 2017/9/9.
//  Copyright © 2017年 Louishwh. All rights reserved.
//

import UIKit

class HWHBaseTableC: HWHBaseVC {

    var table:UITableView? = nil
    
    var headerHeights:[CGFloat] = []
    var cellHeights:[[CGFloat]] = []
    var headers:[Any] = []
    var cellsID:[String] = []
    
    override func buildView() -> UIView {
        table = UITableView(frame: CGRect(x: 0, y: 64, width:screenW , height: screenH))
        table?.separatorStyle = .none
        table?.backgroundColor = UIColor.white
        table?.showsVerticalScrollIndicator = false
        table?.showsHorizontalScrollIndicator = false
        table?.delegate = self
        table?.dataSource = self
        return table!
    }

    func getCell(section:Int,row:Int) -> UITableViewCell{
        
        return UITableViewCell()
    }
    
    func handleTableAction(section:Int,row:Int,tag:Int = 9999){
        
    }
}

//MARK: - Delegate
extension HWHBaseTableC:UITableViewDelegate{

    /// 头高
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return headerHeights[section]
    }
    
    /// 行高
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeights[indexPath.section][indexPath.row]
    }
    
    /// 头
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return headers[section] as? UIView
    }
    
}

//MARK: - DataSource
extension HWHBaseTableC:UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return headerHeights.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellHeights[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return getCell(section: indexPath.section, row: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return handleTableAction(section: indexPath.section, row: indexPath.row)
    }
}
