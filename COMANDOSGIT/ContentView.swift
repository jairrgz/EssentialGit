//
//  ContentView.swift
//  COMANDOSGIT
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 24/01/25.
//

import SwiftUI

struct ContentView: View {
    // Lista de comandos Git
    let commands: [GitCommand] = [
        GitCommand(name: "git init", description: "Inicializa un nuevo repositorio de Git en el directorio actual."),
        GitCommand(name: "git clone", description: "Clona un repositorio remoto a tu máquina local."),
        GitCommand(name: "git status", description: "Muestra el estado actual del repositorio (archivos modificados, sin seguimiento, etc.)."),
        GitCommand(name: "git add", description: "Agrega archivos al área de preparación (staging area)."),
        GitCommand(name: "git commit", description: "Guarda los cambios realizados en el repositorio local."),
        GitCommand(name: "git push", description: "Envía los cambios al repositorio remoto."),
        GitCommand(name: "git pull", description: "Descarga cambios del repositorio remoto e integra esos cambios en tu rama actual."),
        GitCommand(name: "git branch", description: "Muestra las ramas existentes en tu repositorio o crea una nueva rama."),
        GitCommand(name: "git merge", description: "Fusiona los cambios de una rama en otra."),
        GitCommand(name: "git log", description: "Muestra el historial de commits del repositorio.")
    ]
    
    var body: some View {
        NavigationView {
            List(commands) { command in
                NavigationLink(destination: GitCommandDetailView(command: command)) {
                    HStack {
                        Image(systemName: getIconName(for: command.name))
                            .font(.title2)
                            .foregroundColor(.blue)
                            .frame(width: 30)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(command.name)
                                .font(.headline)
                                .foregroundColor(.primary)
                            Text(command.description)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                .lineLimit(2)
                        }
                        .padding(.vertical, 8)
                    }
                }
            }
            .navigationTitle("Comandos Git Esenciales")
            .listStyle(InsetGroupedListStyle())
        }
    }
    
    private func getIconName(for command: String) -> String {
        switch command {
        case "git init": return "folder.badge.plus"
        case "git clone": return "doc.on.doc"
        case "git status": return "info.circle"
        case "git add": return "plus.circle"
        case "git commit": return "checkmark.circle"
        case "git push": return "arrow.up.circle"
        case "git pull": return "arrow.down.circle"
        case "git branch": return "tree"
        case "git merge": return "arrow.triangle.merge"
        case "git log": return "clock"
        default: return "terminal"
        }
    }
}

#Preview {
    ContentView()
}

//https://learngitbranching.js.org/?locale=es_ES

//https://git-scm.com/book/es/v2/Herramientas-de-Git-Organizaci%C3%B3n-interactiva

