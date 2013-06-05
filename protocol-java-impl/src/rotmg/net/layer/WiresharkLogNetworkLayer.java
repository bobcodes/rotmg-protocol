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

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.commons.io.IOUtils;
import org.apache.commons.io.output.NullOutputStream;

public class WiresharkLogNetworkLayer implements NetworkLayer {

    private final FileInputStream _fin;
    private final BufferedInputStream _bin;
    private final OutputStream _out = new NullOutputStream();
    
    public WiresharkLogNetworkLayer(File wireSharkLog) throws FileNotFoundException {
        _fin = new FileInputStream(wireSharkLog);
        _bin = new BufferedInputStream(_fin);
    }
    
    @Override
    public void close() throws IOException {
        IOUtils.closeQuietly(_bin);
        IOUtils.closeQuietly(_fin);
        IOUtils.closeQuietly(_out);
    }

    @Override
    public InputStream getInputStream() throws IOException {
        return _bin;
    }

    @Override
    public OutputStream getOutputStream() throws IOException {
        return _out;
    }

    
}
