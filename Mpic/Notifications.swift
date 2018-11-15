//
//  Notifications.swift
//  Mpic
//
//  Created by menduo on 2018/11/15.
//  Copyright © 2018 menduo. All rights reserved.
//

import Cocoa

class Notifications: NSObject {
    //发送通知
    func notify(title:String,infomation:String,msgCode:Constants.MsgCode) -> Void {
        let notifacation = NSUserNotification()
        notifacation.title = title
        notifacation.informativeText = infomation
        notifacation.contentImage = NSImage(named: msgCode.rawValue)
        notifacation.soundName = NSUserNotificationDefaultSoundName
        NSUserNotificationCenter.default.scheduleNotification(notifacation)
    }
}
