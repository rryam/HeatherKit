# HeatherKit

<p align="center">
  <img width="250" height="250" src="https://github.com/rudrankriyam/RRColorKit/blob/main/RRColorKitIcon.png">
</p>

A shared Swift framework for color and gradient management across iOS, visionOS, and macOS applications. Originally created for Gradient Game and Chroma Game to provide reusable colors, gradients, and UI components.

**Heather** refers to a soft, muted color created by blending different colored fibers into one yarn - perfectly capturing the essence of this multi-color-space library.

## Features

- 🎨 **Multi-Color Space Support**: RGB, HSB, and CMYK color models
- 🌈 **Gradient Management**: Pre-built gradient classes for various use cases
- 🖼️ **SwiftUI Integration**: Native SwiftUI views for displaying color results
- 🔄 **Color Conversions**: Bidirectional hex string and Color conversions
- 📱 **Cross-Platform**: Supports iOS, visionOS, and macOS
- 🎮 **Game-Ready**: Built with color matching and gradient games in mind

## Installation

Add HeatherKit to your project using Swift Package Manager:

```swift
dependencies: [
    .package(url: "https://github.com/rryam/HeatherKit.git", from: "1.0.0")
]
```

## Table of Contents

- [Protocols](#protocols)
- [Color Models](#color-models)
- [Gradient Models](#gradient-models)
- [Result Types](#result-types)
- [SwiftUI Views](#swiftui-views)
- [Extensions](#extensions)
- [Helpers](#helpers)
- [Usage Examples](#usage-examples)

## Protocols

### ColorProtocol

Base protocol for all color types.

```swift
protocol ColorProtocol {
    func new() -> Color
}
```

### RGBColorProtocol

Protocol for RGB color space (conforms to `ColorProtocol`).

```swift
protocol RGBColorProtocol: ColorProtocol {
    var red: Double { get set }      // 0.0 - 1.0
    var green: Double { get set }    // 0.0 - 1.0
    var blue: Double { get set }     // 0.0 - 1.0
}
```

### HSBColorProtocol

Protocol for HSB (Hue, Saturation, Brightness) color space.

```swift
protocol HSBColorProtocol: ColorProtocol {
    var hue: Double { get set }          // 0.0 - 1.0
    var saturation: Double { get set }   // 0.0 - 1.0
    var brightness: Double { get set }   // 0.0 - 1.0
}
```

### CMYKColorProtocol

Protocol for CMYK (Cyan, Magenta, Yellow, Key/Black) color space.

```swift
protocol CMYKColorProtocol: ColorProtocol {
    var cyan: Double { get set }     // 0.0 - 1.0
    var magenta: Double { get set }  // 0.0 - 1.0
    var yellow: Double { get set }   // 0.0 - 1.0
    var black: Double { get set }    // 0.0 - 1.0
}
```

### GradientProtocol

Base protocol for gradient creation.

```swift
protocol GradientProtocol {
    func new() -> Gradient
}
```

### RGBGradientProtocol

Protocol for RGB gradients.

```swift
protocol RGBGradientProtocol: GradientProtocol {
    var startColor: RGBColorProtocol { get set }
    var endColor: RGBColorProtocol { get set }
}
```

Similar protocols exist for `HSBGradientProtocol` and `CMYKGradientProtocol`.

### ResultTypeProtocol

Protocol for formatting result type display.

```swift
protocol ResultTypeProtocol {
    var symbol: String { get }
}
```

## Color Models

### RGB Colors

#### RGBRandomColor
Creates random RGB colors.

```swift
let randomColor = RGBRandomColor()
let swiftUIColor = randomColor.new()
```

#### RGBInitialColor
Provides a neutral starting color for gradient games.

```swift
let initialColor = RGBInitialColor()
```

#### Predefined RGB Colors
- `RGBTestColor` - Predefined test color (20/255, 90/255, 120/255)
- `RGBTestStartColor` - Test gradient start color
- `RGBTestEndColor` - Test gradient end color
- `RGBLogoStartColor` - Logo gradient start color (purple-ish)
- `RGBLogoEndColor` - Logo gradient end color (pink-ish)
- `RGBUserStartColor` - User-defined gradient start
- `RGBUserEndColor` - User-defined gradient end

### HSB Colors

#### HSBRandomColor
Creates random HSB colors.

```swift
let randomHSB = HSBRandomColor()
let color = randomHSB.new()
```

#### Other HSB Colors
- `HSBInitialColor` - Neutral starting color
- `HSBTestColor` - Test color for HSB space

### CMYK Colors

#### CMYKRandomColor
Creates random CMYK colors.

```swift
let randomCMYK = CMYKRandomColor()
let color = randomCMYK.new()
```

#### Other CMYK Colors
- `CMYKInitialColor` - Neutral starting color
- `CMYKTestColor` - Test color for CMYK space

## Gradient Models

### RGB Gradients

#### RGBRandomGradient
Creates gradients with random RGB start and end colors.

```swift
let gradient = RGBRandomGradient().new()
```

#### Other RGB Gradients
- `RGBUserGradient` - User-defined RGB gradient
- `RGBLogoGradient` - App logo gradient
- `RGBTestGradient` - Test RGB gradient

### HSB Gradients

```swift
let hsbGradient = HSBRandomGradient().new()
let userGradient = HSBUserGradient().new()
let testGradient = HSBTestGradient().new()
```

### CMYK Gradients

```swift
let cmykGradient = CMYKRandomGradient().new()
let userGradient = CMYKUserGradient().new()
let testGradient = CMYKTestGradient().new()
```

## Result Types

Enums that define the component types for each color space.

### RGBResultType

```swift
enum RGBResultType: String, ResultTypeProtocol {
    case red, green, blue
    var symbol: String  // Returns "r: ", "g: ", or "b: "
}
```

### HSBResultType

```swift
enum HSBResultType: String, ResultTypeProtocol {
    case hue, saturation, brightness
    var symbol: String  // Returns "h: ", "s: ", or "b: "
}
```

### CMYKResultType

```swift
enum CMYKResultType: String, ResultTypeProtocol {
    case cyan, magenta, yellow, black
    var symbol: String  // Returns "c: ", "m: ", "y: ", or "K: "
}
```

## SwiftUI Views

### RGBResultView

Displays RGB color component values.

```swift
struct ContentView: View {
    let color = RGBRandomColor()

    var body: some View {
        RGBResultView(color)
    }
}
```

### HSBResultView

Displays HSB color component values with appropriate scale (hue: 360, saturation/brightness: 100).

```swift
struct ContentView: View {
    let color = HSBRandomColor()

    var body: some View {
        HSBResultView(color)
    }
}
```

### CMYKResultView

Displays CMYK color component values.

```swift
struct ContentView: View {
    let color = CMYKRandomColor()

    var body: some View {
        CMYKResultView(color)
    }
}
```

### ResultRow

Generic view for displaying individual color component values.

```swift
struct ResultRow<T: ResultTypeProtocol>: View {
    init(_ type: T, _ value: Double, _ step: Double = 255.0)
}
```

## Extensions

### Color Extension

#### Hex String Conversion

```swift
let color = Color.red
let hexString = color.hex  // "FF0000"
```

#### CMYK Initializer

```swift
let color = Color(cyan: 0.5, magenta: 0.3, yellow: 0.1, black: 0.2)
```

### String Extension

#### Hex String to Color

```swift
let hexString = "#FF5733"
let color = hexString.color
```

#### Symbol Generation

```swift
let text = "Red"
let symbol = text.symbol  // "r: "
```

## Helpers

### Assets

SF Symbol string constants for consistent icon usage.

```swift
Assets.minus        // "minus"
Assets.plus         // "plus"
Assets.rightArrow   // "arrow.right"
Assets.selected     // "checkmark.circle.fill"
Assets.rgb          // "r.circle.fill"
Assets.hsb          // "h.circle.fill"
Assets.cmy          // "c.circle.fill"
Assets.history      // "clock.arrow.circlepath"
Assets.settings     // "gear"
Assets.arcade       // "gamecontroller.fill"
Assets.relax        // "figure.mind.and.body"
```

### Constants

Shared constants for UI and color generation.

```swift
Constants.random              // Random Double (0.0...1.0)
Constants.customOpacity       // 0.7
Constants.customRadius        // 16.0
Constants.customBlurRadius    // 5.0
Constants.gradientStartColor  // 75/255 (≈ 0.294)
Constants.gradientEndColor    // 175/255 (≈ 0.686)
```

### String Resources

Pre-defined localization keys and app URLs.

```swift
// Title Text
TitleText.history
TitleText.gradientGame
TitleText.chromaGame
TitleText.settings

// Header Text
HeaderText.target
HeaderText.yours
HeaderText.overallScore

// Button Text
ButtonText.share
ButtonText.evaluate
ButtonText.tryAgain
ButtonText.next
ButtonText.showScore

// App URLs
AppURL.gradientGame  // App Store URL
AppURL.chromaGame    // App Store URL

// Social Links
LinkText.email       // rudrankriyam@gmail.com
```

### TabItemType

Enum for tab navigation.

```swift
enum TabItemType: Int, CaseIterable {
    case rgb, hsb, cmyk, radient, more
    var name: String   // Lowercase name
    var image: String  // SF Symbol name
}
```

## Usage Examples

### Creating a Random Color Gradient

```swift
import SwiftUI
import HeatherKit

struct GradientView: View {
    let gradient = RGBRandomGradient()

    var body: some View {
        Rectangle()
            .fill(LinearGradient(
                gradient: gradient.new(),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ))
    }
}
```

### Displaying Color Components

```swift
import SwiftUI
import HeatherKit

struct ColorAnalyzerView: View {
    @State private var color = RGBRandomColor()

    var body: some View {
        VStack {
            Rectangle()
                .fill(color.new())
                .frame(height: 200)

            RGBResultView(color)
                .padding()

            Button("Generate New Color") {
                color = RGBRandomColor()
            }
        }
    }
}
```

### Converting Hex Colors

```swift
import SwiftUI
import HeatherKit

// Hex string to Color
let hexColor = "#FF5733".color

// Color to hex string
let colorHex = Color.blue.hex  // Returns hex representation
```

### Using Custom CMYK Colors

```swift
import SwiftUI
import HeatherKit

struct CMYKView: View {
    let cmykColor = Color(cyan: 0.5, magenta: 0.3, yellow: 0.8, black: 0.1)

    var body: some View {
        Circle()
            .fill(cmykColor)
            .frame(width: 200, height: 200)
    }
}
```

### Creating Custom Colors

```swift
import HeatherKit

// Create a custom RGB color
struct MyCustomColor: RGBColorProtocol {
    var red: Double = 0.8
    var green: Double = 0.2
    var blue: Double = 0.5
}

let customColor = MyCustomColor().new()
```

### Building a Color Picker Game

```swift
import SwiftUI
import HeatherKit

struct ColorMatchGame: View {
    @State private var targetColor = RGBRandomColor()
    @State private var userColor = RGBInitialColor()

    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text(HeaderText.target)
                    Rectangle()
                        .fill(targetColor.new())
                        .frame(height: 100)
                    RGBResultView(targetColor)
                }

                VStack {
                    Text(HeaderText.yours)
                    Rectangle()
                        .fill(userColor.new())
                        .frame(height: 100)
                    RGBResultView(userColor)
                }
            }

            // Add sliders to adjust userColor.red, .green, .blue
            // Add evaluate button using ButtonText.evaluate
        }
    }
}
```

## License

This project is part of the Gradient Game and Chroma Game ecosystem. For licensing information, please contact [rudrankriyam@gmail.com](mailto:rudrankriyam@gmail.com).

## Author

Created by [Rudrank Riyam](https://twitter.com/rudrankriyam)

- Gradient Game: [@gradientgame](https://twitter.com/gradientgame)
- Chroma Game: [@chromagameapp](https://twitter.com/chromagameapp)

## Contributing

Contributions are welcome! This framework is actively maintained for use in Gradient Game and Chroma Game applications.
