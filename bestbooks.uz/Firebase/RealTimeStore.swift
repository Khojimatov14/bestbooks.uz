//
//  UploadStore.swift
//  bestbooks.uz
//
//  Created by Anvarjon Khojimatov on 2022/02/24.
//



import Foundation
import SwiftUI
import Firebase
import FirebaseDatabase

class RealtimeStore: ObservableObject {

    @Published var items: [BookModel] = []
    
    
    func storeNewBook(bookModel: BookModel, category: String, completion: @escaping (_ success: Bool) -> ()) {
        let ref: DatabaseReference = Database.database().reference(withPath: category)
        var success = true
        
        let newBook = ["bookImage": bookModel.bookImage,
                          "bookName": bookModel.bookName,
                          "bookAuthor": bookModel.bookAuthor,
                          "bookExcerpt": bookModel.bookExcerpt,
                          "bookPrice": bookModel.bookPrice
        ]
    
        ref.childByAutoId().setValue(newBook){ (error, ref) -> Void in
            if error != nil{
                success =  false
            }
        }
        completion(success)
    }
    
    func loadNewBook(categories: String, completion: @escaping () -> ()) {
        let ref: DatabaseReference = Database.database().reference(withPath: categories)
        ref.observe(DataEventType.value) { (snapshot) in
            self.items = []
            for child in snapshot.children {
                if let snapshot = child as? DataSnapshot {
                    let value = snapshot.value as? [String: AnyObject]
                    let bookImage = value!["bookImage"] as? String
                    let bookName = value!["bookName"] as? String
                    let bookAuthor = value!["bookAuthor"] as? String
                    let bookExcerpt = value!["bookExcerpt"] as? String
                    let bookPrice = value!["bookPrice"] as? String
                    self.items.append(BookModel(bookImage: bookImage!,
                                                bookName: bookName!,
                                                bookAuthor: bookAuthor!,
                                                bookExcerpt: bookExcerpt!,
                                                bookPrice: bookPrice!
                                               )
                    )
                }
            }
            completion()
        }
    }
}
