//
//  GitCommandDetailView.swift
//  COMANDOSGIT
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 24/01/25.
//

import SwiftUI

struct GitCommandDetailView: View {
    
    let command: GitCommand
    
    var body: some View {
        VStack {
            Text(command.name)
                .font(.title)
                .padding()
            
            Text(command.description)
                .font(.body)
                .padding()
            
            Spacer()
        }
        .navigationTitle(command.name)
    }
}

#Preview {
    GitCommandDetailView(command: .init(name: "Jair", description: "Was here"))
}
