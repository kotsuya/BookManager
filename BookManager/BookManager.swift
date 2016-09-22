//
//  BookManager.swift
//  BookManager
//
//  Created by Yoo SeungHwan on 2016/09/22.
//  Copyright © 2016年 kotsuya00. All rights reserved.
//

import Foundation

class BookManager {
    var bookList = [Book]()//mutable Array
    
    func addBook(_ bookObject:Book){
        bookList += [bookObject]
    }
    
    func showAllBook() -> String{
        var strTemp = ""
        for bookTemp in bookList {
            strTemp += "Name : \(bookTemp.name)\n"
            strTemp += "Genre : \(bookTemp.genre)\n"
            strTemp += "Author : \(bookTemp.author)\n"
            strTemp += "---------------------------\n"
        }
        return strTemp
    }
    
    func countBook() -> Int{
        return bookList.count
    }
    
    func findBook(_ name:String) -> String?{
        var strTemp = ""
        for bookTemp in bookList {
            if bookTemp.name == name {
                strTemp += "Name : \(bookTemp.name)\n"
                strTemp += "Genre : \(bookTemp.genre)\n"
                strTemp += "Author : \(bookTemp.author)"
                return strTemp
            }
        }
        return nil
    }

    func removeBook(_ name:String) -> String{
        for bookTemp in bookList {
            if bookTemp.name == name {
                let index = (bookList as NSArray).index(of: bookTemp)
                bookList.remove(at: index)
                
                return "\(name)을 삭제했습니다."
            }
        }
        return "삭제할 목록이 없습니다."
    }
}
