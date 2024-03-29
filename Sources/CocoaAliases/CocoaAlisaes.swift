#if canImport(UIKit)
@_exported import UIKit
#elseif canImport(AppKit)
@_exported import AppKit
#endif

#if os(macOS)

public typealias CocoaAccessibility                                   = NSAccessibility
public typealias CocoaAccessibilityElement                            = NSAccessibilityElement
public typealias CocoaAlert                                           = NSAlert
public typealias CocoaAppearance                                      = NSAppearance
public typealias CocoaApplication                                     = NSApplication
public typealias CocoaButton                                          = NSButton
public typealias CocoaColor                                           = NSColor
public typealias CocoaControl                                         = NSControl
public typealias CocoaDatePicker                                      = NSDatePicker
public typealias CocoaDocument                                        = NSDocument
public typealias CocoaEvent                                           = NSEvent
public typealias CocoaFont                                            = NSFont
public typealias CocoaFontDescriptor                                  = NSFontDescriptor
public typealias CocoaGestureRecognizer                               = NSGestureRecognizer
public typealias CocoaImage                                           = NSImage
public typealias CocoaImageView                                       = NSImageView
public typealias CocoaMenu                                            = NSMenu
public typealias CocoaNib                                             = NSNib
public typealias CocoaPanGestureRecognizer                            = NSPanGestureRecognizer
public typealias CocoaPasteboard                                      = NSPasteboard
public typealias CocoaPrintInfo                                       = NSPrintInfo
public typealias CocoaPrinter                                         = NSPrinter
public typealias CocoaResponder                                       = NSResponder
public typealias CocoaRotationGestureRecognizer                       = NSRotationGestureRecognizer
public typealias CocoaScreen                                          = NSScreen
public typealias CocoaScrollView                                      = NSScrollView
public typealias CocoaSegmentedControl                                = NSSegmentedControl
public typealias CocoaSlider                                          = NSSlider
public typealias CocoaSplitViewController                             = NSSplitViewController
public typealias CocoaStackView                                       = NSStackView
public typealias CocoaStepper                                         = NSStepper
public typealias CocoaStoryboard                                      = NSStoryboard
public typealias CocoaStoryboardSegue                                 = NSStoryboardSegue
public typealias CocoaTableView                                       = NSTableView
public typealias CocoaTextField                                       = NSTextField
public typealias CocoaTextInput                                       = NSTextInput
public typealias CocoaTextInputTraits                                 = NSTextInputTraits
public typealias CocoaTextView                                        = NSTextView
public typealias CocoaToolbar                                         = NSToolbar
public typealias CocoaTouch                                           = NSTouch
public typealias CocoaUserActivity                                    = NSUserActivity
public typealias CocoaView                                            = NSView
public typealias CocoaViewController                                  = NSViewController
public typealias CocoaVisualEffectView                                = NSVisualEffectView
public typealias CocoaWindow                                          = NSWindow

#elseif os(iOS)

public typealias CocoaAccessibility                                   = UIAccessibility
public typealias CocoaAccessibilityElement                            = UIAccessibilityElement
public typealias CocoaAppearance                                      = UIAppearance
public typealias CocoaApplication                                     = UIApplication
public typealias CocoaButton                                          = UIButton
public typealias CocoaColor                                           = UIColor
public typealias CocoaControl                                         = UIControl
public typealias CocoaDatePicker                                      = UIDatePicker
public typealias CocoaDocument                                        = UIDocument
public typealias CocoaEvent                                           = UIEvent
public typealias CocoaFont                                            = UIFont
public typealias CocoaFontDescriptor                                  = UIFontDescriptor
public typealias CocoaGestureRecognizer                               = UIGestureRecognizer
public typealias CocoaImage                                           = UIImage
public typealias CocoaImageView                                       = UIImageView

@available(iOS 13.0, *)
public typealias CocoaMenu                                            = UIMenu

public typealias CocoaNib                                             = UINib
public typealias CocoaPanGestureRecognizer                            = UIPanGestureRecognizer
public typealias CocoaPasteboard                                      = UIPasteboard
public typealias CocoaPrintInfo                                       = UIPrintInfo
public typealias CocoaPrinter                                         = UIPrinter
public typealias CocoaResponder                                       = UIResponder
public typealias CocoaRotationGestureRecognizer                       = UIRotationGestureRecognizer
public typealias CocoaScreen                                          = UIScreen
public typealias CocoaScrollView                                      = UIScrollView
public typealias CocoaSegmentedControl                                = UISegmentedControl
public typealias CocoaSlider                                          = UISlider
public typealias CocoaSplitViewController                             = UISplitViewController
public typealias CocoaStackView                                       = UIStackView
public typealias CocoaStepper                                         = UIStepper
public typealias CocoaStoryboard                                      = UIStoryboard
public typealias CocoaStoryboardSegue                                 = UIStoryboardSegue
public typealias CocoaTableView                                       = UITableView
public typealias CocoaTextField                                       = UITextField
public typealias CocoaTextInput                                       = UITextInput
public typealias CocoaTextInputTraits                                 = UITextInputTraits
public typealias CocoaTextView                                        = UITextView
public typealias CocoaToolbar                                         = UIToolbar
public typealias CocoaTouch                                           = UITouch
public typealias CocoaUserActivity                                    = NSUserActivity
public typealias CocoaView                                            = UIView
public typealias CocoaViewController                                  = UIViewController
public typealias CocoaVisualEffectView                                = UIVisualEffectView
public typealias CocoaWindow                                          = UIWindow

#endif

#if os(iOS) && canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, tvOS 13.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
public protocol CocoaViewRepresentable: UIViewRepresentable
where UIViewType == CocoaViewType {
  associatedtype CocoaViewType
  func makeCocoaView(context: Context) -> CocoaViewType
  func updateCocoaView(_ view: CocoaViewType, context: Context)
}

@available(iOS 13.0, tvOS 13.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
extension CocoaViewRepresentable {
  public func makeUIView(context: Context) -> CocoaViewType {
    makeCocoaView(context: context)
  }
  
  public func updateUIView(_ view: CocoaViewType, context: Context) {
    updateCocoaView(view, context: context)
  }
}

@available(iOS 13.0, tvOS 13.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
public protocol CocoaViewControllerRepresentable: UIViewControllerRepresentable
where UIViewControllerType == CocoaViewControllerType {
  associatedtype CocoaViewControllerType
  func makeCocoaViewController(context: Context) -> CocoaViewControllerType
  func updateCocoaViewController(_ controller: CocoaViewControllerType, context: Context)
}

@available(iOS 13.0, tvOS 13.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
extension CocoaViewControllerRepresentable {
  public func makeUIViewController(context: Context) -> CocoaViewControllerType {
    makeCocoaViewController(context: context)
  }
  
  public func updateUIViewController(_ controller: CocoaViewControllerType, context: Context) {
    updateCocoaViewController(controller, context: context)
  }
}
#elseif os(macOS) && canImport(SwiftUI)
import SwiftUI

@available(macOS 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public protocol CocoaViewRepresentable: NSViewRepresentable
where NSViewType == CocoaViewType  {
  associatedtype CocoaViewType
  func makeCocoaView(context: Context) -> CocoaViewType
  func updateCocoaView(_ view: CocoaViewType, context: Context)
}

@available(macOS 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension CocoaViewRepresentable {
  public func makeNSView(context: Context) -> CocoaViewType {
    makeCocoaView(context: context)
  }
  
  public func updateNSView(_ view: CocoaViewType, context: Context) {
    updateCocoaView(view, context: context)
  }
}

@available(macOS 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
public protocol CocoaViewControllerRepresentable: NSViewControllerRepresentable
where NSViewControllerType == CocoaViewControllerType {
  associatedtype CocoaViewControllerType
  func makeCocoaViewController(context: Context) -> CocoaViewControllerType
  func updateCocoaViewController(_ controller: CocoaViewControllerType, context: Context)
}

@available(macOS 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension CocoaViewControllerRepresentable {
  public func makeNSViewController(context: Context) -> CocoaViewControllerType {
    makeCocoaViewController(context: context)
  }
  
  public func updateNSViewController(_ controller: CocoaViewControllerType, context: Context) {
    updateCocoaViewController(controller, context: context)
  }
}
#endif
