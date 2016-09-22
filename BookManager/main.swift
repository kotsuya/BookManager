//
//  main.swift
//  BookManager
//
//  Created by Yoo SeungHwan on 2016/09/22.
//  Copyright © 2016年 kotsuya00. All rights reserved.
//

import Foundation

var book1 = Book()
book1.name = "햄릿"
book1.genre = "비극"
book1.author = "세익스피어"

//book1.bookPrint()

var book2 = Book()
book2.name = "누구를 위하여 종을 울리나"
book2.genre = "전쟁소설"
book2.author = "헤밍웨이"

//book2.bookPrint()

var book3 = Book()
book3.name = "죄와벌"
book3.genre = "사실주의"
book3.author = "톨스토이"

//book3.bookPrint()

var myBook = BookManager()
myBook.addBook(book1)
myBook.addBook(book2)
myBook.addBook(book3)

print(myBook.showAllBook())

print(myBook.countBook())

var findresult = myBook.findBook("햄릿")

if findresult != nil{
    print("\(findresult!)를 찾았습니다.")
}else{
    print("찾으시는 책이 없음")
}

print(myBook.removeBook("죄와벌"))
print(myBook.showAllBook())
    
