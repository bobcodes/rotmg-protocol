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
package rotmg.net.layer;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

import org.apache.commons.io.IOUtils;

import rotmg.net.RotmgParameters;
import rotmg.net.RotmgServer;

public class TcpNetworkLayer implements NetworkLayer {

    private final RotmgServer _server;
    private final Socket _socket;

    public TcpNetworkLayer(RotmgServer server) throws IOException {
        _server = server;
        _socket = new Socket(_server.getHost(), RotmgParameters.PORT);
    }

    @Override
    public void close() throws IOException {
        IOUtils.closeQuietly(_socket);
    }

    @Override
    public InputStream getInputStream() throws IOException {
        return _socket.getInputStream();
    }

    @Override
    public OutputStream getOutputStream() throws IOException {
        return _socket.getOutputStream();
    }
    
    
}
