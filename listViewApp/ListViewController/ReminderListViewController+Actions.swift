//
//  ReminderListViewController+Actions.swift
//  listViewApp
//
//  Created by IACD-020 on 2022/05/25.
//

import UIKit

extension ReminderListViewController{
    @objc func didPressDoneButton(_ sender:ReminderDoneButton){
        guard let id = sender.id else {return}
        completeReminder(with: id)
    }
}
