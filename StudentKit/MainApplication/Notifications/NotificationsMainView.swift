//
//  NotificationsMainView.swift
//  StudentKit
//
//  Created by Munyaradzi Gordon Muneka on 29/8/2020.
//  Copyright © 2020 Munyaradzi Gordon Muneka. All rights reserved.
//

import SwiftUI

struct NotificationsMainView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading, spacing: 4){
                    NotificationCardView()
                        .padding()
                }
            }.navigationBarTitle(Text("Notifications"))
        }
    }
}

struct NotificationsMainView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsMainView()
    }
}
