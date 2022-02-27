
import SwiftUI
import SDWebImageSwiftUI

struct DetailScreen: View {
    @ObservedObject var database = RealtimeStore()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var bookModel: BookModel
    
    func sendMessage() {
        let sms: String = "sms:+821068490882&body=bestbooks.uz\n\(bookModel.bookName)\n\(bookModel.bookAuthor)\n\(bookModel.bookPrice)"
        let strURL: String = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        UIApplication.shared.open(URL.init(string: strURL)!, options: [:], completionHandler: nil)
    }
    
    var body: some View {
        ZStack {
            Color("Bg")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                ZStack {
                    WebImage(url: URL(string: bookModel.bookImage))
                        .resizable()
                        .scaledToFill()
                        .frame(width: .infinity,
                               height: UIScreen.main.bounds.height / 3 + 100,
                               alignment: .top)
                        .blur(radius: 10)
                        .edgesIgnoringSafeArea(.top)
                    WebImage(url: URL(string: bookModel.bookImage))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160, height: .infinity, alignment: .center)
                        .shadow(radius: 15)
                }
                
                DescriptionView(name: bookModel.bookName, author: bookModel.bookAuthor, excerpt: bookModel.bookExcerpt)
                    .offset(y: -40)
                    .padding(.bottom, 50)
            }
            .edgesIgnoringSafeArea(.top)
            
            HStack {
                Text("\(bookModel.bookPrice)₩")
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(action: {
                    sendMessage()
                }, label: {
                    
                    Text("Sotib olish")
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                        .foregroundColor(Color("Primary"))
                })
                    
            }
            .padding()
            .padding(.horizontal)
            .background(Color("Primary"))
            .cornerRadius(50, corners: .topLeft)
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                CustomBackButtonView(action: {presentationMode.wrappedValue.dismiss()}, image: Image(systemName: "chevron.backward"))
                            )

    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(bookModel: BookModel(bookImage: "Profile", bookName: "Kitob nomi", bookAuthor: "kitob muallifi", bookExcerpt: "ascasc", bookPrice: "14.000"))
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct DescriptionView: View {
    var name: String
    var author: String
    var excerpt: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(name)
                .font(.title)
                .fontWeight(.semibold)
            HStack(spacing: 1) {
                Text("Muallif: ")
                    .font(.body)
                    .fontWeight(.regular)
                    .padding(.top, 5)
                    .padding(.bottom, 2)
                
                Text(author)
                    .font(.system(size: 20))
                    .font(.callout)
                    .fontWeight(.regular)
                    .padding(.top, 1.0)
            }
            
            HStack(spacing: 4) {
                ForEach(0 ..< 5) { item in
                    Image("star")
                }
                Text("(4.9)")
                    .opacity(0.5)
                    .padding(.leading, 8)
                
                Spacer()
            }
            
            Text("Kitobdan parcha:")
                .font(.body)
                .fontWeight(.regular)
                .padding(.top, 5)
                .padding(.bottom, 2)
            
            Text(excerpt)
                .font(.subheadline)
                .fontWeight(.regular)
                
            Spacer()
        }
        .frame(width: .infinity, height: 500, alignment: .center)
        .padding()
        .padding(.top)
        .background(Color("Bg"))
        .cornerRadius(40)
        .shadow(radius: 15)
        
        
    }
}

struct ColorDotView: View {
    let color: Color
    var body: some View {
        color
            .frame(width: 24, height: 24)
            .clipShape(Circle())
    }
}

struct CustomBackButtonView: View {
    let action: ()-> Void
    let image: Image
    var body: some View {
        Button(action: action, label: {
            image
                .padding(.all, 12)
                .background(Color.white .opacity(0.7))
                .cornerRadius(8)
                .foregroundColor(.black)
                .shadow(radius: 15)
        })
    }
}
