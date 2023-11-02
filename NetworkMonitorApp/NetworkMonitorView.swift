import SwiftUI

struct NetworkMonitorView: View {
  @StateObject var networkMonitor = NetworkMonitor()
  var body: some View {
    switch networkMonitor.status {
    case .satisfied:
      Label {
        Text("Connected")
      } icon: {
        Image(systemName: "wifi")
      }

    default:
      Label {
        Text("Not Connected")
      } icon: {
        Image(systemName: "wifi.slash")
      }
    }
  }
}
