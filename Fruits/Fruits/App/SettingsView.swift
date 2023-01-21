//
//  SettingsView.swift
//  Fruits
//
//  Created by watariryo on 2023/01/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "frutus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassimu, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - SECTION2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If upi wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    }
                    
                    // MARK: - SECTION3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                            SettingsRowView(name: "Developer", content: "John / Jane")
                            SettingsRowView(name: "Designer", content: "Bob Petras")
                            SettingsRowView(name: "Compatibility", content: "iOS 15")
                            SettingsRowView(name: "Website", linkLabel: "Swift", linkDestination: "developer.apple.com/jp/swift/resources/")
                            SettingsRowView(name: "Twitter", linkLabel: "@Twitter", linkDestination: "twitter.com/?lang=ja")
                            SettingsRowView(name: "SwiftUI", content: "2.0")
                            SettingsRowView(name: "Version", content: "1.1.0")
                        }
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                )
                .padding()
            } //: SCROLL
        }//: NAVIGATION
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
