//
//  StatusMenuController.swift
//  Mpic
//
//  Created by menduo on 2018/10/6.
//  Copyright © 2018 menduo. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {
    @IBOutlet weak var statusMenu: NSMenu!
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
    }
    
    @IBAction func preferenceClicked(_ sender: NSMenuItem) {
        print("进入配置页面...")
    }
    
    @IBAction func uploadClicked(_ sender: NSMenuItem) {
        print("触发上传事件...")
    }
    
    @IBAction func markdownClicked(_ sender: NSMenuItem) {
        print("触发转化为markdown格式事件...")
    }
    
    //MainMenu.xib初始化时被执行
    override func awakeFromNib() {
        let icon = NSImage(named: "statusIcon")
        icon?.isTemplate = true // best for dark mode
        statusItem.button?.image = icon
        statusItem.menu = statusMenu
    };
    
    
}
