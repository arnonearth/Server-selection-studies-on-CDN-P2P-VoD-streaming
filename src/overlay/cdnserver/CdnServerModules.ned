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


// @file CdnServerModules.ned
// @author Abdollah Ghaffari Sheshjavani(AGH)
//

package oversim.overlay.cdnserver;
import oversim.common.IOverlay;

module CdnServerModules like IOverlay
{
    gates:
        input udpIn;   // gate from the UDP layer
        output udpOut;    // gate to the UDP layer
        input appIn;   // gate from the application
        output appOut;    // gate to the application

    submodules:
        cdnserver: CdnServer;
    connections allowunconnected:
        udpIn --> cdnserver.udpIn;
        udpOut <-- cdnserver.udpOut;
        appIn --> cdnserver.appIn;
        appOut <-- cdnserver.appOut;
}
