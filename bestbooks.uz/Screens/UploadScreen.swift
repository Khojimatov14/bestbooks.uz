//
//  UploadScreen.swift
//  bestbooks.uz
//
//  Created by Anvarjon Khojimatov on 2022/02/21.
//

import SwiftUI

struct UploadScreen: View {
    
//    @ObservedObject var creat = CreadeNewBook()
    @ObservedObject var database = RealtimeStore()
    @ObservedObject var storage = StorageStore()
    
    @State var bookName = ""
    @State var bookAuthor = ""
    @State var bookPrice = ""
    @State var bookExcerpt = ""
    @State var bookimage: UIImage?
    @State var disclouser = "Romanlar"
    @State var isLoading = false
    @State var showImagePicker = false
    @State var isExpanded = false
    
    
    let categories = ["Romanlar", "Diniy", "Biznes", "Hikoyalar", "Sherlar"]
    
    func addNewBook(imageUrl: String) {
        let book = BookModel(bookImage: imageUrl,
                             bookName: bookName,
                             bookAuthor: bookAuthor,
                             bookExcerpt: bookExcerpt,
                             bookPrice: bookPrice
        )
        
        database.storeNewBook(bookModel: book, category: disclouser) { success in
            if success {
                bookName = ""
                bookAuthor = ""
                bookPrice = ""
                bookExcerpt = ""
                bookimage = nil
                disclouser = "Romanlar"
                isLoading = false
            }
        }
    }
    
    func upLoadImage() {
        if bookimage != nil {
            isLoading = true
            storage.uploadImage(bookimage!) { downloadURL in
                let urlString = downloadURL!.absoluteString
                addNewBook(imageUrl: urlString)
            }
        }
    }
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Form {
                    Section(header: Text("Kitob rasmi")) {
                        Button(action: {
                            showImagePicker.toggle()
                        }, label: {
                            HStack {
                                Image(systemName: "plus")
                                Text("rasmni kiriting")
                            }
                        })
                        
                        if let image = self.bookimage {
                            Image(uiImage: image)
                                .resizable()
                                .scaledToFit()
                        }
                    }
                    Section(header: Text("Kitob turi")) {
                        DisclosureGroup("\(disclouser)", isExpanded: $isExpanded) {
                            ForEach(categories, id: \.self) { item in
                                HStack {
                                    Text(item)
                                    Spacer()
                                }
                                .background(Color.white)
                                .onTapGesture {
                                    withAnimation {
                                        self.isExpanded.toggle()
                                    }
                                    self.disclouser = item
                                }
                            }
                        }
                    }
                    Section(header: Text("Kitob haqida ma'lumotlar")) {
                        TextField("Kitob nomi", text: $bookName)
                        TextField("Kitob muallifi", text: $bookAuthor)
                        TextField("Kitob narxi", text: $bookPrice)
                    }
                    Section(header: Text("Kitobdan parcha")) {
                        TextEditor(text: $bookExcerpt)
                            .frame(height: 400)

                    }
                    
                }
                
                .navigationBarItems(
                    trailing: Button(
                        action: {
    //                    addNewBook()
                        upLoadImage()
                    }, label: {
                        Image(systemName: "square.and.arrow.up")
                    })
                )
                .navigationBarTitle("bestbooks.uz")
                .fullScreenCover(isPresented: $showImagePicker,
                                 onDismiss: nil) {
                    ImagePicker(image: $bookimage)
                }
                if isLoading {
                    ProgressView()
                }
            }
        }
    }
}

struct UploadScreen_Previews: PreviewProvider {
    static var previews: some View {
        UploadScreen()
    }
}
