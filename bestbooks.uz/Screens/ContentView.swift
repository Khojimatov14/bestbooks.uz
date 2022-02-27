
import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    
    @ObservedObject var database = RealtimeStore()
    
    @State var animatePath:Bool = false
    @State var animateBG:Bool = false
    @State var showMenu:Bool = false
    @State var admin:Bool = true
    @State var currentTab:Int = 0
    @State private var selectedIndex: Int = 0
    @State var buttonAction = 6
    
    private let categories = ["Romanlar", "Diniy", "Biznes", "Hikoyalar", "Sherlar"]
    
    func apiBook() {
        database.loadNewBook(categories: categories[currentTab]) {
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    AppBarView(animateBG: $animateBG, showMenu: $showMenu, animatePath: $animatePath)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0 ..< categories.count) { item in
                                CategoryView(isActive: item == selectedIndex, text: categories[item])
                                    .onTapGesture {
                                        currentTab = item
                                        selectedIndex = item
                                        apiBook()
                                    }
                            }
                        }
                        .padding()
                    }
                    .navigationBarHidden(true)
                    
                    LazyGridView(currentTab: currentTab, database: database)
                    
                }
            }
        }
        .onAppear {
            apiBook()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AppBarView: View {
    
    @Binding var animateBG: Bool
    @Binding var showMenu: Bool
    @Binding var animatePath: Bool
    
    var body: some View {
        HStack {
//            Button(action: {
//                withAnimation {
//                    animateBG.toggle()
//                }
//
//                withAnimation(.spring()) {
//                    showMenu.toggle()
//                }
//
//                withAnimation(.interactiveSpring(
//                    response: 0.4,
//                    dampingFraction: 0.3,
//                    blendDuration: 0.3)
//                                .delay(0.2)
//                ) {
//                    animatePath.toggle()
//                }
//
//            }) {
//                Image("menu")
//                    .padding()
//                    .background(Color("Bg"))
//                    .cornerRadius(10)
//            }
            Spacer()
            
            Text("bestbooks.uz")
                .foregroundColor(Color("Primary"))
                .font(.system(size: 28))
                .padding(.horizontal)
                .padding(.vertical, 7)
                .background(Color("Bg"))
                .cornerRadius(10)
            
            Spacer()
            
//            Button(action: {}) {
//                Image(systemName: "magnifyingglass")
//                    .foregroundColor(Color("Primary"))
//                    .padding(14)
//                    .background(Color("Bg"))
//                    .cornerRadius(10)
//            }
            
        }
        .padding(.horizontal)
    }
}

struct CategoryView: View {
    let isActive: Bool
    let text: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(text )
                .font(.system(size: 16))
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color("Primary"): Color.black.opacity(0.5))
                .padding(5)
                .padding(.horizontal, 3)
                .background(isActive ? Color("Bg") : Color.white)
                .cornerRadius(6)
//                .animation(.easeIn)
        }

    }
}

struct ProductCardView: View {
    
    let bookCard: BookModel
    
    var body: some View {
        VStack(alignment: .leading) {
            WebImage(url: URL(string: bookCard.bookImage))
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width / 2 - 45,
                           height: UIScreen.main.bounds.height / 4 - 11) 

                VStack(alignment: .leading, spacing: 2 ) {

                    Text(bookCard.bookName)
                        .font(.headline)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)


                    Text(bookCard.bookAuthor)
                        .font(.subheadline)
                        .fontWeight(.light)
                    HStack(spacing: 2) {
                        ForEach(0 ..< 5) { item in
                            Image("star")
                        }
                    }
                    .padding(.top, 5)
                }
                .padding(.vertical, 5)
            }
        .frame(width: UIScreen.main.bounds.width / 2 - 30,
                   height: UIScreen.main.bounds.height / 3 + 22)
            .padding(7)
            .background(Color("Bg"))
    }
}

struct LazyGridView: View {
    
    let columns = Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)
    var currentTab:Int
    var database: RealtimeStore

    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(database.items, id: \.self) { item in
                    NavigationLink(
                        destination: DetailScreen(bookModel: item),
                        label: {
                            ProductCardView(bookCard: item)
                        })
                        .foregroundColor(.black)
                }
            }
            .padding(.horizontal)
        }
    }
}
//
//struct BlurView: UIViewRepresentable {
//
//    var sytle: UIBlurEffect.Style
//
//    func makeUIView(context: Context) -> UIVisualEffectView {
//        let view = UIVisualEffectView(effect: UIBlurEffect(style: sytle))
//
//        return view
//    }
//
//    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
//
//    }
//
//
//}
////
//struct MenuView: View {
//
//    @Binding var showMenu: Bool
//    @Binding var animatePath: Bool
//    @Binding var animateBG: Bool
//    @Binding var admin: Bool
//    @Binding var buttonAction: Int
//
//    var body: some View {
//        ZStack {
//            BlurView(sytle: .systemUltraThinMaterialDark)
//
//            Color("Bg")
//                .opacity(0.5)
//                .blur(radius: 15)
//
//            VStack(alignment: .leading, spacing: 25) {
//                Button(action: {
//
//                    withAnimation(.interactiveSpring(
//                        response: 0.4,
//                        dampingFraction: 0.3,
//                        blendDuration: 0.3)
//                    ) {
//                        animatePath.toggle()
//                    }
//
//                    withAnimation {
//                        animateBG.toggle()
//                    }
//
//                    withAnimation(.spring().delay(0.1)) {
//                        showMenu.toggle()
//                    }
//
//                }, label: {
//                    Image(systemName: "xmark.circle")
//                        .font(.title)
//                })
//                    .foregroundColor(Color("Primary"))
//
//                MenuButton(title: "Premium Access", image: "square.grid.2x2", offset: 0, buttonAction: buttonAction)
//                    .padding(.top, 40)
//                MenuButton(title: "Upload Content", image: "square.and.arrow.up.on.square", offset: 10, buttonAction: buttonAction)
//                MenuButton(title: "My Account", image: "person.circle", offset: 30, buttonAction: buttonAction)
//                MenuButton(title: "Make Money", image: "dollarsign.circle", offset: 10, buttonAction: buttonAction)
//                MenuButton(title: "Help", image: "questionmark.circle", offset: 0, buttonAction: buttonAction)
//                if admin {
//                    MenuButton(title: "Yangi kitob", image: "books.vertical", offset: 0, buttonAction: buttonAction)
//                }
//
//                Spacer(minLength: 10)
//                MenuButton(title: "LOGOUT", image: "rectangle.portrait.and.arrow.right", offset: 0, buttonAction: buttonAction)
//            }
//            .padding(.trailing, 120)
//            .padding()
//            .padding(.top, getSafeArea().top)
//            .padding(.bottom, getSafeArea().bottom)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
//        }
//        .clipShape(MenuShape(value: animatePath ? 150 : 0))
//        .background(
//            MenuShape(value: animatePath ? 150 : 0)
//                .stroke(
//                    .linearGradient(.init(colors: [
//                        Color("Primary"),
//                        Color("Primary")
//                            .opacity(0.7),
//                        Color("Primary")
//                            .opacity(0.5),
//                        Color.clear
//                    ]), startPoint: .top, endPoint: .bottom),lineWidth: animatePath ? 7 : 0
//                )
//                .padding(.leading, -50)
//        )
//        .ignoresSafeArea()
//    }
//}
////
//struct MenuShape: Shape {
//    var value: CGFloat
//    var animatableData: CGFloat {
//        get { return value }
//        set { value = newValue }
//    }
//
//    func path(in rect: CGRect) -> Path {
//        return Path { path in
//            let width = rect.width - 100
//            let height = rect.height
//
//            path.move(to: CGPoint(x: width, y: height))
//            path.addLine(to: CGPoint(x: 0, y: height))
//            path.addLine(to: CGPoint(x: 0, y: 0))
//            path.addLine(to: CGPoint(x: width, y: 0))
//
//            path.move(to: CGPoint(x: width, y: 0))
//            path.addCurve(to: CGPoint(x: width, y: height + 100),
//                          control1: CGPoint(x: width + value, y: height / 3),
//                          control2: CGPoint(x: width - value, y: height / 2))
//        }
//    }
//}
////
//struct MenuButton: View {
//    var title: String
//    var image: String
//    var offset: CGFloat
//    var buttonAction: View
//
//    var body: some View {
//        VStack {
//            Button(action: {
//                if buttonAction == 6 {
//                    NavigationLink {
//                        UploadScreen()
//                    } label: {
//                        Text("Yangi kitob")
//                    }
//
//                }
//            }, label: {
//                HStack {
//                    if image == "Profile" {
//                        Image(image)
//                            .resizable()
//                            .scaledToFill()
//                            .frame(width: 50, height: 50)
//                            .clipShape(Circle())
//
//                    }else {
//                        Image(systemName: image)
//                            .resizable()
//                            .scaledToFill()
//                            .frame(width: 25, height: 25)
//                            .foregroundColor(Color("Primary"))
//                    }
//
//                    Text(title)
//                        .font(.system(size: 17))
//                        .fontWeight(title == "LOGOUT" ? .semibold : .medium)
//                        .kerning(title == "LOGOUT" ? 1.2 : 0.8)
//                        .foregroundColor(.white.opacity(0.65))
//
//                }
//                .padding(.vertical)
//            })
//                .offset(x: offset)
//        }
//    }
//}
