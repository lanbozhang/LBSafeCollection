# LBSafeCollection
A list of same APIs for NSArray/NSDictionary/NSString/NSAttributedString

Many Foundation APIs throw exceptions when passing a nil object to it, and your app will crash, for example

```objc
[[NSAttributedString alloc] initWithString:nil];
[NSArray arrayWithObject:nil];
@[nil];
@{@"AKey":nil}
[aDIct setObject:nil forKey:@"aKey"];
```
this pod will ignore nil when creating NSArray/NSDictionary via Syntactic sugar, @[] and @{}

for Other APIs, this pod provide a safe collection Of APIs

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

LBSafeCollection is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'LBSafeCollection'
```

## Author

lanbo_zhang@hotmail.com

## License

LBSafeCollection is available under the MIT license. See the LICENSE file for more info.
