//
//  ContentView.swift
//  Shared
//
//  Created by Joshua Yancy on 12/2/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
            VStack{
                
                HStack{
                    Button(action: {},
                           label: {
                        Text("AC")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                    Button(action: {},
                           label: {
                        Text("+/-")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                    Button(action: {},
                           label: {
                        Text("%")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                    Button(action: {},
                           label: {
                        Text("÷")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                }
                HStack{
                    Button(action: {},
                           label: {
                        Text("7")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                    Button(action: {},
                           label: {
                        Text("8")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                    Button(action: {},
                           label: {
                        Text("9")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                    Button(action: {},
                           label: {
                        Text("x")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                }
                HStack{
                    Button(action: {},
                           label: {
                        Text("4")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                    Button(action: {},
                           label: {
                        Text("5")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                    Button(action: {},
                           label: {
                        Text("6")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                    Button(action: {},
                           label: {
                        Text("-")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                }
                HStack{
                    Button(action: {},
                           label: {
                        Text("1")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                    Button(action: {},
                           label: {
                        Text("2")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                    Button(action: {},
                           label: {
                        Text("3")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                    Button(action: {},
                           label: {
                        Text("+")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                }
                HStack{
                    Button(action: {},
                           label: {
                        Text("0")
                            .padding()
                            .foregroundColor(.primary)
                            .frame(width: 100)
                            .background(.secondary)
                            .clipShape(Capsule())
                    })
                        

                    
                    Button(action: {},
                           label: {
                        Text(".")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                    Button(action: {},
                           label: {
                        Text("=")
                            .padding()
                            .foregroundColor(.primary)
                            .background(.secondary)
                            .clipShape(Circle())
                    })

                }
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
    }

}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
            ContentView().previewDevice("iPad Pro (12.9-inch) (5th generation)").environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
            ContentView().preferredColorScheme(.dark).environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
}
