/*
IGIS - Remote graphics for Swift on Linux
Copyright (C) 2018, 2019 Tango Golf Digital, LLC
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

import Foundation

/// An `Alpha` object alters the opacity of items rendered on the canvas.
public final class Alpha : CanvasObject {
    /// A value between 0 and 1 representing opacity
    public let alphaValue : Double

    /// Instantiates a new `Alpha` object from the specified AlphaValue
    public init(alphaValue:Double) {
        self.alphaValue = alphaValue
    }

    /// Instantiates a new `Alpha` object from the specified AlphaValue
    public init(_ alphaValue:Double) {
        self.alphaValue = alphaValue
    }

    internal override func canvasCommand() -> String {
        let commands = "globalAlpha|\(alphaValue)"
        return commands
    }
}
