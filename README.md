# SenkoUILibrary

Reusable, lightweight UI components for iOS that help you ship polished interfaces fast.  
Built with **Swift** and **SwiftUI**, packaged via **Swift Package Manager**.


## ✨ Features
- ⚡ **Fast to integrate** — add beautiful UI components to your project in seconds.
- 🛠 **Prebuilt & customizable** — tweak colors, sizes, and behavior to fit your brand.
- 🚀 **Auto-scrolling Carousel** with paging, looping, and adjustable delay.
- 🖼 **Supports local & remote images** with built-in caching and placeholders.
- 📦 **Lightweight & modular** — import only the components you need via SPM.


---

## 📦 Requirements
- iOS 15.0+
- Swift 5.7+
- Xcode 14+

---

## 📥 Installation

### Swift Package Manager
In Xcode:
1. Go to **File > Add Packages...**
2. Enter the repository URL:

   ```bash
   https://github.com/kousik-d/SenkoUI

   ```
3. Select Add Package.

## Components

### BadgeModifier
A SwiftUI ViewModifier for adding small, customizable badges to any view.

**Features:**
- Supports text or SF Symbols as badge content.
- Adjustable badge size, color, position, and offset.
- Works with any SwiftUI view (images, buttons, icons, etc.).

**Example:**
```swift
import SwiftUI
import SenkoUILibrary

struct ContentView: View {
    var body: some View {
        Image(systemName: "bell")
            .font(.system(size: 40))
            .applyBadgeWith(color: .red,
                                radius: 5,
                                position: .topTrailing)
    }
}

```
<img width="108" height="184" alt="image" src="https://github.com/user-attachments/assets/7ee8e2f2-c9a9-4f8a-950a-186531633514" />

