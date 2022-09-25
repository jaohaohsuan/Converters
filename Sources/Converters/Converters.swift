import Foundation

public struct Converters {
    
    func convertNZDtoUSD(nzd: String) -> String {
        let usdRate = 0.59
        let nzdValue = Double(nzd) ?? 0

        if nzdValue <= 0 {
            return "Please enter a positive number."
        }

        if nzdValue >= 1_000_000 {
            return "Value too big to convert!"
        }

        return "$\(String(format: "%.2f", nzdValue * usdRate))"
    }
}
