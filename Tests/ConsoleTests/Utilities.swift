import Console
import NIO

final class TestConsole: Console {
    var output: String
    var input: String
    var error: String
    var userInfo: [AnyHashable : Any]
    var eventLoop: EventLoop

    init() {
        self.output = ""
        self.input = ""
        self.error = ""
        self.userInfo = [:]
        self.eventLoop = EmbeddedEventLoop()
    }

    func clear(_ type: ConsoleClear) {

    }
    
    func input(isSecure: Bool) -> String {
        let t = input
        input = ""
        return t
    }

    func output(_ text: ConsoleText, newLine: Bool) {
        self.output += text.description + (newLine ? "\n" : "")
    }

    func report(error: String, newLine: Bool) {
        self.error += error + (newLine ? "\n" : "")
    }

    var size: (width: Int, height: Int) {
        return (640, 320)
    }
}
