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
package rotmg.net;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

public class RotmgParameters {

    private static final String OUTGOING_KEY_HEX_STR = "311f80691451c71b09a13a2a6e";
    private static final String INCOMING_KEY_HEX_STR = "72c5583cafb6818995cbd74b80";
    public static final Cipher OUTGOING_KEY;
    public static final Cipher INCOMING_KEY;
    public static final String ROTMG_PUBLIC_KEY = "-----BEGIN PUBLIC KEY-----\n"+"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDEmgEmQcgLd0mvWqL6AKmhzj"+"JfZoAmZC0PUmG8K9CB1Ml68P00S3eU+TSL5aG8Mg3Tipvs02gC2veC10knRi7r"+"EsUwL8+h22EsjnpKZ/7K5YV9cefryTMnS0x4QGZbSkdPz/rLh0uGwk8Zu0cEKb"+"xQyvd3+pSmqZ5/ZQGaFjm9TQIDAQAB\n"+"-----END PUBLIC KEY-----";
    
    public static final String BUILD_VERSION = "14.1";
    public static int PORT = 2050;
    
    static {
        OUTGOING_KEY = getKey(OUTGOING_KEY_HEX_STR);
        INCOMING_KEY = getKey(INCOMING_KEY_HEX_STR);
    }
    
    private static Cipher getKey(String hexStrKey) {
        try {
            Cipher rc4 = Cipher.getInstance("RC4");
            SecretKeySpec rc4Key = new SecretKeySpec(getBytesFromKey(hexStrKey), "RC4");
            rc4.init(Cipher.ENCRYPT_MODE, rc4Key); // this doesn't matter, both decrypt and encrypt operations are the same for rc4
            return rc4;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException | InvalidKeyException | IOException e) {
            throw new RuntimeException("Could not initialize  entryption keys");
        }
    }
    
    /**
     * public static function decodeHexStringToRC4(param1:String) : ByteArray {
         var bytes:ByteArray = new ByteArray();
         var counter:* = 0;
         while(counter<param1.length)
         {
            bytes.writeByte(parseInt(param1.substr(counter,2),16));
            counter=counter+2;
         }
         return bytes;
      }
     * @param key
     * @throws IOException 
     */
    private static byte[] getBytesFromKey(String key) throws IOException {
        try (ByteArrayOutputStream bout = new ByteArrayOutputStream()) {
            int counter = 0;
            while(counter < key.length()) {
                // read the hex encoded string two hexadecimal digits at a time
                // 16 * 16 = 256 = 2^8 = 1 byte!
                bout.write(Integer.parseInt(key.substring(counter, counter+2), 16));
                counter += 2; // consumed two hexadecimal characters
            }
            
            return bout.toByteArray();
        }
    }
}
