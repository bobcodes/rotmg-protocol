/*
The MIT License (MIT)

Copyright (c) 2013 bobcodes

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
 */
package rotmg.experiment;

import java.io.File;

import rotmg.net.RotmgNetworkHandler;
import rotmg.net.layer.WiresharkLogNetworkLayer;

public class ReadLoggedBytesMain {

    private static final File toServerLogs = new File("protocol-example" + File.separator + "2013-06-04-to-server.binary");
    private static final File fromServerLogs = new File("protocol-example" + File.separator + "2013-06-04-from-server.binary");
    
    public static void main(String[] args) throws Exception {
        
        System.out.println("===========FROM SERVER==================");
        try(RotmgNetworkHandler nw = new RotmgNetworkHandler(new WiresharkLogNetworkLayer(fromServerLogs))) {
            nw.run();
        } catch(Exception e) {
            e.printStackTrace();
        }
        
        
        System.out.println("===========TO SERVER====================");
        try(RotmgNetworkHandler nw = new RotmgNetworkHandler(new WiresharkLogNetworkLayer(toServerLogs))) {
            nw.run();
        } catch(Exception e) {
            e.printStackTrace();
        }
        
    }
    
}
