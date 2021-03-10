/*
IGIS - Remote graphics for Swift on Linux
Copyright (C) 2018,2020,2021 Tango Golf Digital, LLC
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/


public final class Color {
    // hex stores the color data in a single 32-bit unsigned integer
    internal let hex : UInt32

    /// A string describing the colors rgb value in hexadecimal form
    public var style : String {
        return "#" + String(hex, radix:16)
    }

    /// The red RGB value of the color
    public var red : UInt8 {
        return UInt8((hex >> 16) & 0xFF)
    }

    /// The green RGB value of the color
    public var green : UInt8 {
        return UInt8((hex >> 8) & 0xFF)
    }
    
    /// The blue RGB value of the color
    public var blue : UInt8 {
        return UInt8(hex & 0xFF)
    }

    /// A tuplet containing the RGB values for this color in decimal form
    public var rgb : (red:UInt8, green:UInt8, blue:UInt8) {
        return (red, green, blue)
    }

    public enum Name : UInt32, CaseIterable {
        case aliceblue = 0xF0F8FF
        case antiquewhite = 0xFAEBD7
        case aquamarine = 0x7FFFD4
        case azure = 0xF0FFFF
        case beige = 0xF5F5DC
        case bisque = 0xFFE4C4
        case black = 0x000000
        case blanchedalmond = 0xFFEBCD
        case blue = 0x0000FF
        case blueviolet = 0x8A2BE2
        case brown = 0xA52A2A
        case burlywood = 0xDEB887
        case cadetblue = 0x5F9EA0
        case chartreuse = 0x7FFF00
        case chocolate = 0xD2691E
        case coral = 0xFF7F50
        case cornflowerblue = 0x6495ED
        case cornsilk = 0xFFF8DC
        case crimson = 0xDC143C
        case cyan = 0x00FFFF
        case darkblue = 0x00008B
        case darkcyan = 0x008B8B
        case darkgoldenrod = 0xB8860B
        case darkgray = 0xA9A9A9
        case darkgreen = 0x006400
        case darkkhaki = 0xBDB76B
        case darkmagenta = 0x8B008B
        case darkolivegreen = 0x556B2F
        case darkorange = 0xFF8C00
        case darkorchid = 0x9932CC
        case darkred = 0x8B0000
        case darksalmon = 0xE9967A
        case darkseagreen = 0x8FBC8F
        case darkslateblue = 0x483D8B
        case darkslategray = 0x2F4F4F
        case darkturquoise = 0x00CED1
        case darkviolet = 0x9400D3
        case deeppink = 0xFF1493
        case deepskyblue = 0x00BFFF
        case dimgray = 0x696969
        case dodgerblue = 0x1E90FF
        case firebrick = 0xB22222
        case floralwhite = 0xFFFAF0
        case forestgreen = 0x228B22
        case gainsboro = 0xDCDCDC
        case ghostwhite = 0xF8F8FF
        case gold = 0xFFD700
        case goldenrod = 0xDAA520
        case gray = 0x808080
        case green = 0x008000
        case greenyellow = 0xADFF2F
        case honeydew = 0xF0FFF0
        case hotpink = 0xFF69B4
        case indianred = 0xCD5C5C
        case indigo = 0x4B0082
        case ivory = 0xFFFFF0
        case khaki = 0xF0E68C
        case lavender = 0xE6E6FA
        case lavenderblush = 0xFFF0F5
        case lawngreen = 0x7CFC00
        case lemonchiffon = 0xFFFACD
        case lightblue = 0xADD8E6
        case lightcoral = 0xF08080
        case lightcyan = 0xE0FFFF
        case lightgoldenrodyellow = 0xFAFAD2
        case lightgray = 0xD3D3D3
        case lightgreen = 0x90EE90
        case lightpink = 0xFFB6C1
        case lightsalmon = 0xFFA07A
        case lightseagreen = 0x20B2AA
        case lightskyblue = 0x87CEFA
        case lightslategray = 0x778899
        case lightsteelblue = 0xB0C4DE
        case lightyellow = 0xFFFFE0
        case lime = 0x00FF00
        case limegreen = 0x32CD32
        case linen = 0xFAF0E6
        case magenta = 0xFF00FF
        case maroon = 0x800000
        case mediumaquamarine = 0x66CDAA
        case mediumblue = 0x0000CD
        case mediumorchid = 0xBA55D3
        case mediumpurple = 0x9370DB
        case mediumseagreen = 0x3CB371
        case mediumslateblue = 0x7B68EE
        case mediumspringgreen = 0x00FA9A
        case mediumturquoise = 0x48D1CC
        case mediumvioletred = 0xC71585
        case midnightblue = 0x191970
        case mintcream = 0xF5FFFA
        case mistyrose = 0xFFE4E1
        case moccasin = 0xFFE4B5
        case navajowhite = 0xFFDEAD
        case navy = 0x000080
        case oldlace = 0xFDF5E6
        case olive = 0x808000
        case olivedrab = 0x6B8E23
        case orange = 0xFFA500
        case orangered = 0xFF4500
        case orchid = 0xDA70D6
        case palegoldenrod = 0xEEE8AA
        case palegreen = 0x98FB98
        case paleturquoise = 0xAFEEEE
        case palevioletred = 0xDB7093
        case papayawhip = 0xFFEFD5
        case peachpuff = 0xFFDAB9
        case peru = 0xCD853F
        case pink = 0xFFC0CB
        case plum = 0xDDA0DD
        case powderblue = 0xB0E0E6
        case purple = 0x800080
        case red = 0xFF0000
        case rosybrown = 0xBC8F8F
        case royalblue = 0x4169E1
        case saddlebrown = 0x8B4513
        case salmon = 0xFA8072
        case sandybrown = 0xF4A460
        case seagreen = 0x2E8B57
        case seashell = 0xFFF5EE
        case sienna = 0xA0522D
        case silver = 0xC0C0C0
        case skyblue = 0x87CEEB
        case slateblue = 0x6A5ACD
        case slategray = 0x708090
        case snow = 0xFFFAFA
        case springgreen = 0x00FF7F
        case steelblue = 0x4682B4
        case tan = 0xD2B48C
        case teal = 0x008080
        case thistle = 0xD8BFD8
        case tomato = 0xFF6347
        case turquoise = 0x40E0D0
        case violet = 0xEE82EE
        case wheat = 0xF5DEB3
        case white = 0xFFFFFF
        case whitesmoke = 0xF5F5F5
        case yellow = 0xFFFF00
        case yellowgreen = 0x9ACD32
    }

    public required init (red:UInt8, green:UInt8, blue:UInt8) {
        self.hex = (UInt32(red) << 16) + (UInt32(green) << 8) + UInt32(blue)
    }

    public init(_ name:Name) {
        self.hex = name.rawValue
    }
}

