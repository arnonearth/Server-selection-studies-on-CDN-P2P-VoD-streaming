//
// Copyright (C) 2012 Tarbiat Modares University All Rights Reserved.
// http://ece.modares.ac.ir/mnl/
// This system was designed and developed at the DML(Digital Media Lab http://dml.ir/)
// under supervision of Dr. Behzad Akbari (http://www.modares.ac.ir/ece/b.akbari)
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//


// @file Mpeg4PlayerModules.ned
// @author Abdollah Ghaffari Shehjavani,Behnam Ahmadifar, Yasser Seyyedi
//

package oversim.tier2.vodstream;
import oversim.common.ITier;
//
// The compound module of the MPEG4Player implementation
//
module MPEG4VodStreamModules like ITier
{
    @display("i=device/VodStream");
    gates:
        input udpIn;    // gate from the UDP layer
        input from_lowerTier;    // gate from the lower tier
        input from_upperTier;    // gate from the upper tier
        output udpOut;    // gate to the UDP layer
        output to_lowerTier;    // gate to the lower tier
        output to_upperTier;    // gate to the upper tier

    submodules:
        mpeg4vodstream: MPEG4VodStream;
    connections allowunconnected:
        from_lowerTier --> mpeg4vodstream.from_lowerTier;
        to_lowerTier <-- mpeg4vodstream.to_lowerTier;
}
