//
//  ModulesMainView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct ModulesMainView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading, spacing: 32){
                    VStack(alignment: .leading){
                        Text("Courses")
                            .font(.headline)
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 24){
                                ForEach(0..<10){i in
                                    NavigationLink(destination: CourseView(name: displayData[i].title)){
                                        CourseCardView(info: displayData[i])
                                    }
                                }
                            }.frame(maxWidth: .infinity)
                        }
                    }
                    VStack(alignment: .leading){
                        HStack{
                            Text("Timetable")
                                .font(.headline)
                            Spacer()
                            NavigationLink(destination: CoursesTimeTableView()){
                                Text("View all")
                            }
                        }
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 24){
                                ForEach(0..<3){i in
                                    //NavigationLink(destination: CoursesTimeTableView()){
                                        TimetableCardView()
                                    //}
                                }
                            }.frame(maxWidth: .infinity)
                        }
                    }
                    VStack(alignment: .leading, spacing: 16){
                        Text("Library")
                            .font(.headline)
                        //NavigationLink(destination: CoursesTimeTableView()){
                            HStack{
                                Image(systemName: "folder")
                                Text("Catalog")
                                    .padding(.horizontal,8)
                            }
                            Divider()
                        //}
                        NavigationLink(destination: CoursesTimeTableView()){
                            VStack(alignment: .leading){
                                HStack{
                                    Image(systemName: "calendar")
                                        .foregroundColor(Color.black)
                                    Text("Timetable")
                                        .padding(.horizontal,8)
                                        .foregroundColor(Color.black)
                                }
                                Divider()
                            }
                        }
                        NavigationLink(destination: CoursesTimeTableView()){
                            VStack(alignment: .leading){
                                HStack{
                                    Image(systemName: "gift")
                                        .foregroundColor(Color.black)
                                    Text("My activity")
                                        .padding(.horizontal,8)
                                        .foregroundColor(Color.black)
                                }
                                Divider()
                            }
                        }
                    }
                    VStack(alignment: .leading){
                        Text("Virtual classrooms")
                            .font(.headline)
                        ZStack{
                            Image("vtcl")
                                
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(Color.orange)
                                
                        }
                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .navigationBarTitle(Text("Modules"))
            .navigationBarItems(trailing: HStack{
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24, alignment: .center)
            })
        }
    }
}

struct ModulesMainView_Previews: PreviewProvider {
    static var previews: some View {
        ModulesMainView()
    }
}