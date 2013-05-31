package rotmg.net;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.io.IOUtils;

import rotmg.actions.Actions;
import rotmg.actions.IncomingAction;
import rotmg.actions.IncomingActionBroadcaster;
import rotmg.actions.OutgoingAction;
import rotmg.actions.outgoing.HelloAction;

public class RotmgNetworkHandler implements NetworkHandler, Closeable {

    private static int PORT = 2050;
    private static final String outgoingSecretKey = "311f80691451c71b09a13a2a6e";
    private static final String incomingSecretKey = "72c5583cafb6818995cbd74b80";
    
    /**
     * Public key for encrypting passwords
     */
    public static final String ROTMG_PUBLIC_KEY = "-----BEGIN PUBLIC KEY-----\n"+"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDEmgEmQcgLd0mvWqL6AKmhzj"+"JfZoAmZC0PUmG8K9CB1Ml68P00S3eU+TSL5aG8Mg3Tipvs02gC2veC10knRi7r"+"EsUwL8+h22EsjnpKZ/7K5YV9cefryTMnS0x4QGZbSkdPz/rLh0uGwk8Zu0cEKb"+"xQyvd3+pSmqZ5/ZQGaFjm9TQIDAQAB\n"+"-----END PUBLIC KEY-----";

    private final RotmgServer _server;
    private final Socket _socket;
    private final BufferedInputStream _bin;
    private final DataInputStream _din;
    private final BufferedOutputStream _bout;
    private final DataOutputStream _dout;
    private final Map<Integer, IncomingAction> _incomingActionMapper;
    
    public RotmgNetworkHandler(RotmgServer server) throws IOException {
        _server = server;
        _socket = new Socket(_server.getHost(), PORT);
        _bin = new BufferedInputStream(_socket.getInputStream());
        _din = new DataInputStream(_bin);
        _bout = new BufferedOutputStream(_socket.getOutputStream());
        _dout = new DataOutputStream(_bout);
        _incomingActionMapper = new HashMap<Integer, IncomingAction>();
        for(IncomingAction ia : Actions.INCOMING_ACTIONS) {
            _incomingActionMapper.put(ia.getMessageId(), ia);
        }
    }

    @Override
    public void close() throws IOException {
        IOUtils.closeQuietly(_din);
        IOUtils.closeQuietly(_bin);
        IOUtils.closeQuietly(_dout);
        IOUtils.closeQuietly(_bout);
        IOUtils.closeQuietly(_socket);
    }
    
    public void run() throws IOException {
        sendHello();
        while(true) {
            IncomingAction ia = parse();
            IncomingActionBroadcaster.get().broadcast(ia);
        }
    }
    
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
    private void sendHello() throws IOException {
        sendToNetwork(new HelloAction());
    }
    
    /**
        _loc2_=Crypto.getCipher("rc4",Dapiby.dahicamo(UserConfig.InComingSecretKey));
        
        this.payloadSize=this._tcpSocket.readInt();
        if(this._tcpSocket.bytesAvailable<4) {
            return;
        } 
        if(this._tcpSocket.bytesAvailable<this.payloadSize-tyju)
        {
           return;
        }
        messageId=this._tcpSocket.readUnsignedByte();
        message=this.govizupas.runozak(messageId);
        data=new ByteArray();
        if(this.payloadSize-5>0)
        {
           this._tcpSocket.readBytes(data,0,this.payloadSize-5);
        }
        this._incomingCipher.decrypt(data);
        message.parseFromInput(data);
     */
    private IncomingAction parse() throws IOException {
        int payloadSize = _din.readInt();
        int msgId = _din.readUnsignedByte();
        
        byte [] bytes = new byte[payloadSize-5];
        _din.read(bytes, 0, payloadSize-5);
        bytes = decrypt(bytes);
        
        IncomingAction iaParser = _incomingActionMapper.get(msgId);
        IncomingAction ia = null;
        if(iaParser != null) {
            ia = iaParser.fromBytes(bytes);
        }
        System.out.println(msgId + " " + payloadSize + " " + ia);
        return ia;
    }
    
    private byte[] decrypt(byte[] bytes) throws IOException {
        try {
            Cipher rc4 = Cipher.getInstance("RC4");
            SecretKeySpec rc4Key = new SecretKeySpec(getBytesFromKey(incomingSecretKey), "RC4");
            rc4.init(Cipher.DECRYPT_MODE, rc4Key);
            return rc4.doFinal(bytes);
        } catch (NoSuchAlgorithmException | NoSuchPaddingException | InvalidKeyException | IllegalBlockSizeException | BadPaddingException e) {
            throw new IOException(e);
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
    private byte[] getBytesFromKey(String key) throws IOException {
        try (ByteArrayOutputStream bout = new ByteArrayOutputStream()) {
            int counter = 0;
            while(counter < key.length()) {
                // read the hex encoded string two hexadecimal digits at a time
                // 16 * 16 = 256 = 2^8 = 1 byte!
                System.out.println(key);
                System.out.println(key.substring(counter, counter+2));
                System.out.println(Integer.parseInt(key.substring(counter,  counter+2), 16));
                bout.write(Integer.parseInt(key.substring(counter, counter+2), 16));
                counter += 2; // consumed two hexadecimal characters
            }
            
            return bout.toByteArray();
        }
    }
    
    /**
         private function writePendingMessages() : void {
         var currentMessage:NetworkMessage = this._headMessageToWrite.next;
         while(currentMessage)
         {
            this.data.clear();
            currentMessage.writeToOutput(this.data);
            this.data.position=0;
            if(this._outgoingCipher!=null)
            {
               this._outgoingCipher.encrypt(this.data);
               this.data.position=0;
            }
            this._tcpSocket.writeInt(this.data.bytesAvailable+5);
            this._tcpSocket.writeByte(currentMessage.id);
            this._tcpSocket.writeBytes(this.data);
            currentMessage.consume();
            currentMessage=currentMessage.next;
         }
         this._tcpSocket.flush();
         this._nullMessage.next=null;
         this._nullMessage.wacumod=null;
         this._headMessageToWrite=this._tailMessageToWrite=this._nullMessage;
         return;
      }
     */
    @Override
    public void sendToNetwork(OutgoingAction outgoing) throws IOException {
        byte[] stuffToWrite = outgoing.toBytes();
        byte[] encryptedBytes = encrypt(stuffToWrite);
        _dout.writeInt(encryptedBytes.length);
        _dout.writeByte(outgoing.getMessageId());
        _dout.write(encryptedBytes);
        
        if(outgoing instanceof HelloAction) {
            System.out.println("wrote\t " + outgoing.getMessageId() + "\tHelloAction");
        } else {
            System.out.println("wrote\t" + outgoing.getMessageId() + "\t" + outgoing.toString());
        }
    }
    
    private byte[] encrypt(byte[] bytes) throws IOException {
        try {
            Cipher rc4 = Cipher.getInstance("RC4");
            //SecretKeySpec rc4Key = new SecretKeySpec(outgoingSecretKey.getBytes("ASCII"), "RC4");
            SecretKeySpec rc4Key = new SecretKeySpec(getBytesFromKey(outgoingSecretKey), "RC4");
            rc4.init(Cipher.ENCRYPT_MODE, rc4Key);
            return rc4.doFinal(bytes);
        } catch (NoSuchAlgorithmException | NoSuchPaddingException | InvalidKeyException | IllegalBlockSizeException | BadPaddingException e) {
            throw new IOException(e);
        }
    }

}
