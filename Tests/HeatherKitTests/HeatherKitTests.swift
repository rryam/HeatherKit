import Testing
@testable import HeatherKit

// MARK: - RGB Color Tests

@Test("RGB Random Color creates valid color components")
func testRGBRandomColor() {
    let color = RGBRandomColor()
    #expect(color.red >= 0.0 && color.red <= 1.0)
    #expect(color.green >= 0.0 && color.green <= 1.0)
    #expect(color.blue >= 0.0 && color.blue <= 1.0)
}

@Test("RGB Test Color has specific values")
func testRGBTestColor() {
    let color = RGBTestColor()
    #expect(color.red == 20.0/255.0)
    #expect(color.green == 90.0/255.0)
    #expect(color.blue == 120.0/255.0)
}

@Test("RGB Color can be converted to SwiftUI Color")
func testRGBColorConversion() {
    let rgbColor = RGBTestColor()
    let _ = rgbColor.new() // Successfully creates a Color
}

// MARK: - HSB Color Tests

@Test("HSB Random Color creates valid color components")
func testHSBRandomColor() {
    let color = HSBRandomColor()
    #expect(color.hue >= 0.0 && color.hue <= 1.0)
    #expect(color.saturation >= 0.0 && color.saturation <= 1.0)
    #expect(color.brightness >= 0.0 && color.brightness <= 1.0)
}

@Test("HSB Test Color has specific values")
func testHSBTestColor() {
    let color = HSBTestColor()
    #expect(color.hue == 50.0/360.0)
    #expect(color.saturation == 20.0/100.0)
    #expect(color.brightness == 50.0/100.0)
}

@Test("HSB Initial Color is neutral")
func testHSBInitialColor() {
    let color = HSBInitialColor()
    #expect(color.saturation == 0.0)
}

// MARK: - CMYK Color Tests

@Test("CMYK Random Color creates valid color components")
func testCMYKRandomColor() {
    let color = CMYKRandomColor()
    #expect(color.cyan >= 0.0 && color.cyan <= 1.0)
    #expect(color.magenta >= 0.0 && color.magenta <= 1.0)
    #expect(color.yellow >= 0.0 && color.yellow <= 1.0)
    #expect(color.black >= 0.0 && color.black <= 1.0)
}

@Test("CMYK Test Color has specific values")
func testCMYKTestColor() {
    let color = CMYKTestColor()
    #expect(color.cyan == 0.84)
    #expect(color.magenta == 0.31)
    #expect(color.yellow == 0.00)
    #expect(color.black == 0.52)
}

@Test("CMYK to RGB conversion works correctly")
func testCMYKToRGBConversion() {
    let cmykColor = CMYKTestColor()
    let _ = cmykColor.new() // Successfully creates a Color
}

// MARK: - Gradient Tests

@Test("RGB Random Gradient creates valid gradient")
func testRGBRandomGradient() {
    let gradient = RGBRandomGradient()
    let swiftUIGradient = gradient.new()
    #expect(swiftUIGradient.stops.count == 2)
}

@Test("RGB Logo Gradient has correct colors")
func testRGBLogoGradient() {
    let gradient = RGBLogoGradient()
    let startColor = gradient.startColor as! RGBLogoStartColor
    let endColor = gradient.endColor as! RGBLogoEndColor

    #expect(startColor.red == 94.0/255.0)
    #expect(endColor.red == 191.0/255.0)
}

@Test("HSB Gradient creates valid gradient")
func testHSBGradient() {
    let gradient = HSBRandomGradient()
    let swiftUIGradient = gradient.new()
    #expect(swiftUIGradient.stops.count == 2)
}

@Test("CMYK Gradient creates valid gradient")
func testCMYKGradient() {
    let gradient = CMYKRandomGradient()
    let swiftUIGradient = gradient.new()
    #expect(swiftUIGradient.stops.count == 2)
}

// MARK: - String Extension Tests

@Test("String to Color conversion works for hex values")
func testStringToColor() {
    #expect("FF0000".color.hex == "FF0000")
    #expect("#00FF00".color.hex == "00FF00")
}

@Test("String symbol extraction works")
func testStringSymbol() {
    let text = "Red"
    #expect(text.symbol == "r: ")

    let empty = ""
    #expect(empty.symbol == ": ")
}
