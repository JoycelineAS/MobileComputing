//
//  ContentView.swift
//  Exercise profile page
//
//  Created by student on 25/10/24.
//



import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .center) {
                Rectangle()
                    .fill(Color.blue)
                    .frame(height: 150)
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 100, height: 100)
                    .overlay(
                        Text("👩🏻‍💻")
                            .font(.system(size: 50))
                    )
                    .offset(y: 50)
            }
            Text("@Joyceline")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.top, 5)
                
                
            .padding(.bottom, 5)
            
            // Profile
            Text("Joyceline Andriany Suryanto")
                .font(.title)
                .fontWeight(.bold)
            
            HStack{
                Text("Surabaya")
                    .foregroundColor(.blue)
                Text("|")
                    .foregroundColor(.gray)
                    .frame(width: 5, height: 5)
                
                Text("Joined Oct 2024")
                    .foregroundColor(.gray)
                
            }
            
            
            HStack(spacing: 15){
                Button(action: {
              
                }) {
                    HStack{
                        Image(systemName: "person.fill")
                            .foregroundColor(.primary)
                        Text("Follow")
                            .fontWeight(.medium)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                
                Button(action: {
        
                }) {HStack{
                    Image(systemName: "message.fill")
                        .foregroundColor(.primary)
                    Text("Message")
                        .fontWeight(.medium)
                    }
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                
                Button(action: {
                }) {
                    HStack{
                    Image(systemName: "ellipsis")
                    Text("More")
                        .fontWeight(.medium)
                }
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.top, 10)
            
            Text("""
                A student of Information Systems for Business 2022 at Universitas Ciputra Surabaya.
                """)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.horizontal)
                .padding(.top, 10)
            
            Divider().padding(.vertical, 20)
            
            Text("Information")
                .font(.title2)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading )
                .padding(.leading, 20)
                .padding(.bottom, 20)
            
            
            // Information Section
            VStack(alignment: .leading, spacing: 20) {
                InfoRow(label: "Website", iconName: "globe", infoText: "www.Joy.com")
                InfoRow(label: "Email", iconName: "envelope", infoText: "jandriany@student.ciputra.ac.id")
                InfoRow(label: "Phone", iconName: "phone", infoText: "+62 853 7070 77788")
                InfoRow(label: "Joined", iconName: "calendar", infoText: "25 October, 2024")
            }
            .padding(.horizontal, 20)
            
            Spacer()
            Divider().padding(.vertical, 20)
            
            // Skills tags section
            HStack(spacing: 15) {
                SkillTag(title: "UI Designer")
                SkillTag(title: "UX Designer")
                SkillTag(title: "Design System")
            }
            .padding(.bottom, 35)
        }
    }
}

struct InfoRow: View {
    var label: String
    var iconName: String
    var infoText: String
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .foregroundColor(.gray)
                .frame(width:20, height:20, alignment: .leading)
            Text(label)
                .font(.subheadline)
                .foregroundColor(.gray)
            Spacer()
            
            Text(infoText)
                .padding(.leading, 20)
                .foregroundColor(.primary)
                .multilineTextAlignment(.trailing)
        }
    }
}

struct SkillTag: View {
    var title: String
    
    var body: some View {
        Text(title)
            .padding(8)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            .foregroundColor(.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
