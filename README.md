# CocoaAlises

Just a bunch of typealeases for the AppKit and UIKit.

This package gives an abitily to use Cocoa prefixed equivalents of NS prefixed classes from the AppKit and UI prefixed classes from UIKit (mostly for classes that have alternatives in these frameworks), makes the development of cross-platform UI frameworks a little bit easier, reduces the amount of boilerplate code.

So you can replace this

```swift
#if os(iOS)
import UIKit

extension UIView {
  
    func roundCorners(by value: CGFloat) {
        layer.cornerRadius = value
    }
  
}

#elseif os(OSX)
import AppKit // or Cocoa

extension NSView {
  
    func roundCorners(by value: CGFloat) {
        layer.cornerRadius = value
    }
  
}

#endif
```

with this

```swift
import CocoaAlises
import CoreGraphics

extension CocoaView {
  
    func roundCorners(by value: CGFloat) {
        layer.cornerRadius = value
    }
  
}
```

## Installation

Just add a link to this repo to your Package.swift file.

```swift
.package(
  name: "cocoa-alaises",
  url: "https://github.com/makeupstudio/cocoa-alaises.git",
  from: "1.0.0"
)
```

```swift
.product(
  name: "CocoaAlaises",
  package: "cocoa-alaises"
)
```

## License

CocoaAliases is available under the MIT license. See the LICENSE file for more info.

---

*Feel free to contribute or [communicate](https://twitter.com/maximkrouk).*
