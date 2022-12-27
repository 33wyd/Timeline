//
//  TaskCategoryManagementView.swift
//  Timeline
//
//  Created by Jason Liu on 2022/12/27.
//

import SwiftUI

struct TaskCategoryManagementView: View {
    @EnvironmentObject var timeline: Timeline
    var body: some View {
        NavigationView {
            List {
                ForEach(timeline.taskCategoryList) { taskCategory in
                    NavigationLink(destination: Text("None")) {
                        HStack() {
                            Text(taskCategory.name)
                            Spacer()
                            Circle().frame(width: 10).foregroundColor(Color(rgbaColor: taskCategory.themeColor))
                        }
                    }
                }
                .onDelete { indexSet in
                    timeline.removeTaskCategory(at: indexSet)
                }
                .onMove { indexSet, newOffset in
                    timeline.moveTaskCategory(from: indexSet, to: newOffset)
                }
            }
            .navigationTitle("Manage Palettes")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem { EditButton() }
            }
        }
    }
}

struct TaskCategoryManagementView_Previews: PreviewProvider {
    static var previews: some View {
        TaskCategoryManagementView()
            .environmentObject(Timeline())
    }
}
