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

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.httpclient.util.Base64;
import org.apache.commons.io.IOUtils;

import com.google.common.base.Charsets;

import rotmg.actions.Actions;
import rotmg.actions.IncomingAction;
import rotmg.actions.IncomingActionBroadcaster;
import rotmg.actions.OutgoingAction;
import rotmg.actions.outgoing.EmptyAction;
import rotmg.actions.outgoing.HelloAction;
import rotmg.net.layer.NetworkLayer;

public class RotmgNetworkHandler implements NetworkHandler, Closeable {

    private final NetworkLayer _nwLayer;
    private final BufferedInputStream _bin;
    private final DataInputStream _din;
    private final BufferedOutputStream _bout;
    private final DataOutputStream _dout;
    private final Map<Integer, IncomingAction> _incomingActionMapper;
    private final Map<Integer, OutgoingAction> _outgoingActionMapper;
    
    public RotmgNetworkHandler(NetworkLayer nwlayer) throws IOException {
        _nwLayer = nwlayer;
        _bin = new BufferedInputStream(_nwLayer.getInputStream());
        _din = new DataInputStream(_bin);
        _bout = new BufferedOutputStream(_nwLayer.getOutputStream());
        _dout = new DataOutputStream(_bout);
        _incomingActionMapper = new HashMap<>();
        for(IncomingAction ia : Actions.INCOMING_ACTIONS) {
            _incomingActionMapper.put(ia.getMessageId(), ia);
        }
        _outgoingActionMapper = new HashMap<>();
        for (OutgoingAction oa : Actions.OUTGOING_ACTIONS) {
            _outgoingActionMapper.put(oa.getMessageId(), oa);
        }
    }

    @Override
    public void close() throws IOException {
        IOUtils.closeQuietly(_din);
        IOUtils.closeQuietly(_bin);
        IOUtils.closeQuietly(_dout);
        IOUtils.closeQuietly(_bout);
        IOUtils.closeQuietly(_nwLayer);
    }
    
    public void run() throws IOException, InterruptedException {
        while(true) {
            Thread.sleep(500);
            
            int payloadSize = _din.readInt();
            int msgId = _din.readUnsignedByte();

            if(payloadSize < 5) {
                System.out.println("got fake incoming action");
                continue;
            }
            
            byte[] bytes = readBytes(payloadSize);
            if(_incomingActionMapper.containsKey(msgId)) {
                IncomingAction ia = parseIncomingAction(payloadSize, msgId, bytes);
                if(ia != null) {
                    IncomingActionBroadcaster.get().broadcast(ia);
                }
            } else if(_outgoingActionMapper.containsKey(msgId)) {
                parseOutgoingAction(payloadSize, msgId, bytes);
            } else {
                System.out.println("got unknown \tNO CLASS\t" + msgId + "\t" + payloadSize);
            }
            
            //sendToNetwork(new EmptyAction());
        }
    }
    
    private byte[] readBytes(int payloadSize) throws IOException {
        byte [] bytes = new byte[payloadSize-5];
        _din.read(bytes, 0, payloadSize-5);
        return bytes;
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
    private IncomingAction parseIncomingAction(int payloadSize, int msgId, byte [] bytes) throws IOException {
        bytes = decrypt(bytes, RotmgParameters.INCOMING_KEY);
        
        IncomingAction iaParser = _incomingActionMapper.get(msgId);
        IncomingAction ia = iaParser.fromBytes(bytes);
        System.out.println("got incoming\t" + iaParser.getClass().getSimpleName() + "\t" + msgId + "\t" + payloadSize + "\t" + ia);
        return ia;
    }
    
    private OutgoingAction parseOutgoingAction(int payloadSize, int msgId, byte [] bytes) throws IOException {
        bytes = decrypt(bytes, RotmgParameters.OUTGOING_KEY);
        
        OutgoingAction oaParser = _outgoingActionMapper.get(msgId);
        OutgoingAction oa = oaParser.fromBytes(bytes);
        System.out.println("got outgoing\t" + oaParser.getClass().getSimpleName() + "\t" + msgId + "\t" + payloadSize + "\t" + oa);
        return oa;
    }
    
    private byte[] decrypt(byte[] bytes, Cipher key) throws IOException {
        return key.update(bytes);
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
        _dout.writeInt(encryptedBytes.length+5);
        _dout.writeByte(outgoing.getMessageId());
        _dout.write(encryptedBytes);
        
        System.out.println("wrote\t" + outgoing.getMessageId() + "\t" + outgoing.toString());
        _dout.flush();
    }
    
    private byte[] encrypt(byte[] bytes) {
        return RotmgParameters.OUTGOING_KEY.update(bytes);
    }

}
