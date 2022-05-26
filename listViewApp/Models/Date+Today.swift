//
//  Date+Today.swift
//  listViewApp
//
//  Created by IACD-020 on 2022/05/25.
//

import Foundation

extension Date{
    var dayAndTimeText:String{
        let timeText = formatted(date: .omitted, time: .shortened)
        if Locale.current.calendar.isDateInToday(self){
            let timeFormat = NSLocalizedString("Today at %@", comment: "Today at time format string")
            return String(format: timeFormat, timeText)
        }else{
            let dateText = formatted(.dateTime.month(.abbreviated).day())
            let dateAndTimeFormat = NSLocalizedString("%@ at %@", comment: "Date and time format string")
            return String(format: dateAndTimeFormat, dateText,timeText)
        }
        
        
    }
    
    var dayText:String{
        if Locale.current.calendar.isDateInToday(self){
            return NSLocalizedString("Today", comment: "Today due date subscription")
        }else{
            return formatted(.dateTime.month().day().weekday(.wide))
        }
    }
}
