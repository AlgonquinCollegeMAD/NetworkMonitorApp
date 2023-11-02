import Foundation
import Network

class NetworkMonitor: ObservableObject {
  @Published private(set) var status: NWPath.Status = .unsatisfied
  
  private let monitor = NWPathMonitor()
  private let monitorQueue = DispatchQueue(label: "NWPathMonitor")
  
  init() {
    monitor.pathUpdateHandler = { path in
      DispatchQueue.main.async {
        self.status = path.status
      }
    }
    monitor.start(queue: monitorQueue)
  }
}
