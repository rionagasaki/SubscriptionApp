//
//  SettingCellView.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/18.
//

import SwiftUI

struct SettingCellView: View {
    let setting:Setting
    var body: some View {
        HStack{
            Image(systemName: setting.settingImage)
            Text(setting.settingName)
        }
    }
}

struct SettingCellView_Previews: PreviewProvider {
    static var previews: some View {
        SettingCellView(setting: Setting(settingName: "名前変更", settingImage: "person"))
    }
}
