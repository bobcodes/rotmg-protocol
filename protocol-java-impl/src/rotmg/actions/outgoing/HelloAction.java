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
package rotmg.actions.outgoing;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Security;
import java.util.Arrays;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.openssl.PEMReader;
import org.bouncycastle.util.encoders.Base64;

import rotmg.account.UserConfig;
import rotmg.actions.OutgoingAction;
import rotmg.net.RotmgParameters;

import com.google.common.base.Charsets;

/**
 *   var _loc2_:HelloNetworkMessage = this.govizupas.runozak(HELLO) as HelloNetworkMessage;
     _loc2_.buildVersion_=UserConfig.BUILD_VERSION;
     _loc2_._whereToSendPlayer=_whereToSendPlayer;
     _loc2_.guid_=this.qopy(account.getUserId());
     _loc2_.password_=this.qopy(account.password());
     _loc2_.secret_=this.qopy(account.platformDependantSecret());
     _loc2_.keyTime_=keyTime_;
     _loc2_.key_.length=0;
     _loc2_.sofabe=sofabe==null?"":sofabe; // possibly empty
     _loc2_.vukyluz = account.qujipoj(); // ExternalInterface.call("rotmg.UrlLib.getParam","entrypt");
                                         // according to firebug console:
                                         // >>> rotmg.UrlLib.getParam("entrypt");
                                         // ""
     _loc2_.accountType=account.getGameNet();
     _loc2_.metulocy=account.zyz(); // empty for rotmg account
     _loc2_.getPlayPlatform=account.getPlayPlatform(); // rotmg
     _loc2_.kofimupo=account.rowyr(); // possibly empty
 */
public class HelloAction implements OutgoingAction {

    /**
     * 2013-06-01 build version upgraded to 13.4
     */
    private final String buildVersion;
    private final int whereToSendPlayer;
    private final String userId;
    private final String password;
    private final String platformDependantSecret;
    private final int keyTime;
    private final byte[] key;
    private final String somethingThatsEmpty1;
    private final String rotmgUrlLibParamEntryPoint;
    private final String gameNet;
    private final String somethingThatsEmpty2;
    private final String playPlatform;
    private final String somethingThatsEmpty3;
    
    public HelloAction() {
        this(
                RotmgParameters.BUILD_VERSION,
                -2, // whereToSendPlayer
                UserConfig.USERNAME,
                UserConfig.PASSWORD,
                "", //platformDependantSecret
                -1, //keyTime
                new byte[]{}, // key
                "", //somethingThatsEmpty1
                "", //rotmgUrlLibParamEntryPoint
                "rotmg", //gameNet
                "", //somethingThatsEmpty2
                "rotmg", //playPlatform
                "" //somethingThatsEmpty3
                );
    }
    
    
    
    public HelloAction(String buildVersion, int whereToSendPlayer,
            String userId, String password, String platformDependantSecret,
            int keyTime, byte[] key, String somethingThatsEmpty1,
            String rotmgUrlLibParamEntryPoint, String gameNet,
            String somethingThatsEmpty2, String playPlatform,
            String somethingThatsEmpty3) {
        super();
        this.buildVersion = buildVersion;
        this.whereToSendPlayer = whereToSendPlayer;
        this.userId = userId;
        this.password = password;
        this.platformDependantSecret = platformDependantSecret;
        this.keyTime = keyTime;
        this.key = key;
        this.somethingThatsEmpty1 = somethingThatsEmpty1;
        this.rotmgUrlLibParamEntryPoint = rotmgUrlLibParamEntryPoint;
        this.gameNet = gameNet;
        this.somethingThatsEmpty2 = somethingThatsEmpty2;
        this.playPlatform = playPlatform;
        this.somethingThatsEmpty3 = somethingThatsEmpty3;
    }



    /**
      public static const SEND_TO_TUTORIAL:int = -1;
      public static const SEND_TO_NEXUS:int = -2;
      public static const SEND_TO_RANDOM_REALM:int = -3;
      
         hello.guid_=this.qopy(account.getUserId());
         hello.password_=this.qopy(account.password());
         hello.secret_=this.qopy(account.platformDependantSecret());
      
         param1.writeUTF(this.buildVersion_);               // 13.3
         param1.writeInt(this._whereToSendPlayer);          // tutorial, nexus, random realm
         param1.writeUTF(this.guid_);                       // user name
         param1.writeUTF(this.password_);                   // user pw
         param1.writeUTF(this.secret_);                     // ""
         param1.writeInt(this.keyTime_);                    // initially -1
         param1.writeShort(this.key_.length);               // initially 0
         param1.writeBytes(this.key_);                      // {}
         param1.writeInt(this.sofabe.length);               // 0
         param1.writeUTFBytes(this.sofabe);                 // ""
         param1.writeUTF(this.rotmgUrlLibParamEntryPoint);  // ""
         param1.writeUTF(this.gameNet);                     // rotmg
         param1.writeUTF(this.metulocy);                    // ""
         param1.writeUTF(this.getPlayPlatform);             // rotmg
         param1.writeUTF(this.kofimupo);                    // ""
     */
    @Override
    public void toBytes(DataOutputStream dout) throws IOException {
        dout.writeUTF(buildVersion);
        dout.writeInt(whereToSendPlayer);
        dout.writeUTF(encryptWithPublicKey(userId));                       // user name
        dout.writeUTF(encryptWithPublicKey(password));                   // user pw
        dout.writeUTF(encryptWithPublicKey(platformDependantSecret));                     // ""
        dout.writeInt(keyTime);                    // initially -1
        dout.writeShort(key.length);               // initially 0
        dout.write(key);                      // {}
        dout.writeInt(somethingThatsEmpty1.length());               // 0
        dout.write(somethingThatsEmpty1.getBytes(Charsets.UTF_8));                 // ""
        dout.writeUTF(rotmgUrlLibParamEntryPoint);  // ""
        dout.writeUTF(gameNet);                     // rotmg
        dout.writeUTF(somethingThatsEmpty2);                    // ""
        dout.writeUTF(playPlatform);             // rotmg
        dout.writeUTF(somethingThatsEmpty3);                    // ""
    }

    @Override
    public OutgoingAction fromBytes(DataInputStream din) throws IOException {
        String buildVersion = din.readUTF();
        int whereToSendPlayer = din.readInt();
        String username = null; din.readUTF();
        String password = null; din.readUTF();
        String secret = null; din.readUTF();
        int keyTime = din.readInt();
        int keyLength = din.readUnsignedShort();
        byte[] key = new byte[keyLength];
        din.read(key, 0, keyLength);
        int emptyString1Len = din.readInt();
        byte[] emptyString1Bytes = new byte[emptyString1Len];
        din.read(emptyString1Bytes, 0, emptyString1Len);
        String somethingThatsEmpty1 = new String(emptyString1Bytes, Charsets.UTF_8);
        String rotmgUrlLibParamEntryPoint = din.readUTF();
        String gameNet = din.readUTF();
        String somethingThatsEmpty2 = din.readUTF();
        String playPlatform = din.readUTF();
        String somethingThatsEmpty3 = din.readUTF();
    
        return new HelloAction(
                buildVersion,
                whereToSendPlayer,
                username,
                password,
                secret,
                keyTime,
                key,
                somethingThatsEmpty1,
                rotmgUrlLibParamEntryPoint,
                gameNet,
                somethingThatsEmpty2,
                playPlatform,
                somethingThatsEmpty3
                );
    }
    
    /**
     *   private function encryptWithPublicKey(param1:String) : String {
         var rsaPublicKey:RSAKey = PEM.readRSAPublicKey(UserConfig.rotmgPEM);
         var bytesToEncrypt:ByteArray = new ByteArray();
         bytesToEncrypt.writeUTFBytes(param1);
         var encryptedBytes:ByteArray = new ByteArray();
         rsaPublicKey.encrypt(bytesToEncrypt,encryptedBytes,bytesToEncrypt.length);
         return Base64.encodeByteArray(encryptedBytes);
     */
    private String encryptWithPublicKey(String thingToEncrypt) throws IOException {
        try (Reader reader = new StringReader(RotmgParameters.ROTMG_PUBLIC_KEY);
                PEMReader pemReader = new PEMReader(reader))
        {
            Security.addProvider(new BouncyCastleProvider());
            PublicKey publicKey = (PublicKey)pemReader.readObject();
            Cipher  rsa = Cipher.getInstance("RSA");
            rsa.init(Cipher.ENCRYPT_MODE, publicKey);
            byte[] encryptedBytes = rsa.doFinal(thingToEncrypt.getBytes());
            return new String(Base64.encode(encryptedBytes));
        } catch (IllegalBlockSizeException | 
                BadPaddingException | 
                NoSuchAlgorithmException | 
                NoSuchPaddingException | 
                InvalidKeyException e) {
            throw new IOException("Could not encrypt.", e);
        }
    }
    
    /**
     * public static const HELLO:int = 17;
     */
    @Override
    public int getMessageId() {
        return 17;
    }

    @Override
    public String toString() {
        return "HelloAction [buildVersion=" + buildVersion
                + ", whereToSendPlayer=" + whereToSendPlayer
                //+ ", userId="
                //+ userId + ", password=" + password
                //+ ", platformDependantSecret=" + platformDependantSecret
                + ", keyTime=" + keyTime + ", key=" + Arrays.toString(key)
                + ", somethingThatsEmpty1=" + somethingThatsEmpty1
                + ", rotmgUrlLibParamEntryPoint=" + rotmgUrlLibParamEntryPoint
                + ", gameNet=" + gameNet + ", somethingThatsEmpty2="
                + somethingThatsEmpty2 + ", playPlatform=" + playPlatform
                + ", somethingThatsEmpty3=" + somethingThatsEmpty3 + "]";
    }

    
}
