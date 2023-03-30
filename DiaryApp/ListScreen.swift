//
//  ListScreen.swift
//  DiaryApp
//
//  Created by Çare C. on 26.03.2023.
//

import SwiftUI

struct ListScreen: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    
    private var items: FetchedResults<Item>
    
    @State var actionAddDiary : Int? = 0
    
    var body: some View {
        NavigationView{
            ZStack (alignment: .bottomTrailing) {
                
                NavigationLink(destination: AddDiaryScreen(), tag: 1, selection: $actionAddDiary) {
                    EmptyView()
                }
                
                List{
                    ForEach(items) { item in
                        NavigationLink.init(destination: DetailScreen.init(item: item)){
                            DiaryItemRow(item: item, itemFormatter: itemFormatter)
                        }
                        
                       
                        
                    }
                }
                
                Button{
                    self.actionAddDiary = 1
                    debugPrint("hello bana tıkladın")
                } label: {
                    FabButtonView()
                        .padding(24)
                }
                
            }
            .navigationTitle(Text("list_tab"))
            
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen()
    }
}
