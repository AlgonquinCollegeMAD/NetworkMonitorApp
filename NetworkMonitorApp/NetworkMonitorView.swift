import SwiftUI

struct NetworkMonitorView: View {
  @StateObject var networkMonitor = NetworkMonitor()
  var body: some View {
    switch networkMonitor.status {
    case .satisfied:
      Text("Satisfied")
    case .unsatisfied:
      Text("Unsatisfied")
    case .requiresConnection:
      Text("Requires Connection")
    default:
      Text("Unknown")
    }
  }
}
