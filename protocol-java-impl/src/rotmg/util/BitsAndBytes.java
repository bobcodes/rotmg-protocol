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
package rotmg.util;

import java.io.DataInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.google.common.base.Charsets;

public class BitsAndBytes {

    public static long readUnsignedInt(DataInputStream din) throws IOException {
        long fp=din.readInt();
        fp=fp & 0xffffffffL; // convert from signed int, to unsigned
        return fp;
    }
    
    public static List<Integer> readIntList(DataInputStream din) throws IOException {
        int size = din.readShort();
        
        List<Integer> list = new ArrayList<>();
        for(int i = 0; i < size; i++) {
            list.add(din.readInt());
        }
        
        return list;
    }
    
    public static byte[] readShortByteArray(DataInputStream din) throws IOException {
        int numOfBytes = din.readShort();
        byte[] bytes = new byte[numOfBytes];
        din.read(bytes, 0, numOfBytes);
        return bytes;
    }
    
    public static byte[] readByteArray(DataInputStream din) throws IOException {
        int numOfBytes = din.readInt();
        byte[] bytes = new byte[numOfBytes];
        din.read(bytes, 0, numOfBytes);
        return bytes;
    }
    
    /**
     * reads a string list where it is encoded with
     * [number of strings:int]
     * [byte size:int][UTF-8:bytes]
     * [byte size:int][UTF-8:bytes]
     * [byte size:int][UTF-8:bytes]
     * etc
     */
    public static List<String> readIntPrefixedStringList(DataInputStream din) throws IOException {
        List<String> stringList = new ArrayList<>();
        
        int numOfStrings = din.readShort();
        for(int i = 0; i < numOfStrings; i++) {
            byte[] stringBytes = readByteArray(din);
            stringList.add(new String(stringBytes, Charsets.UTF_8));
        }
        
        return stringList;
    }
    
    private BitsAndBytes() {
        
    }
    
}
