package rotmg.net;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;

import rotmg.actions.Actions;
import rotmg.actions.IncomingAction;
import rotmg.actions.IncomingActionBroadcaster;
import rotmg.actions.OutgoingAction;

public class RotmgNetworkHandler implements NetworkHandler, Closeable {

    private static int PORT = 2050;
    private static final String outGoingSecretKey = "311f80691451c71b09a13a2a6e";
    private static final String inComingSecretKey = "72c5583cafb6818995cbd74b80";
    
    /**
     * Public key for encrypting passwords
     */
    public static final String rotmgPEM =
            "-----BEGIN PUBLIC KEY-----\n"
          + "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDEmgEmQcgLd0mvWqL6AKmhzj"
          + "JfZoAmZC0PUmG8K9CB1Ml68P00S3eU+TSL5aG8Mg3Tipvs02gC2veC10knRi7r"
          + "EsUwL8+h22EsjnpKZ/7K5YV9cefryTMnS0x4QGZbSkdPz/rLh0uGwk8Zu0cEKb"
          + "xQyvd3+pSmqZ5/ZQGaFjm9TQIDAQAB"
          + "\n-----END PUBLIC KEY-----";

    private final RotmgServer _server;
    private final Socket _socket;
    private final DataInputStream _din;
    private final BufferedOutputStream _bout;
    private Map<Integer, IncomingAction> _incomingActionMapper;
    
    public RotmgNetworkHandler(RotmgServer server) throws IOException {
        _server = server;
        _socket = new Socket(_server.getHost(), PORT);
        _din = new DataInputStream( new BufferedInputStream(_socket.getInputStream()) );
        _bout = new BufferedOutputStream(_socket.getOutputStream());
        _incomingActionMapper = new HashMap<Integer, IncomingAction>();
        for(IncomingAction ia : Actions.INCOMING_ACTIONS) {
            _incomingActionMapper.put(ia.getMessageId(), ia);
        }
    }

    @Override
    public void close() throws IOException {
        _din.close();
        _bout.close();
        _socket.close();
    }
    
    public void run() throws IOException {
        while(true) {
            IncomingAction ia = parse();
            IncomingActionBroadcaster.get().broadcast(ia);
        }
    }
    
    /**
     * 
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
     * @return
     */
    private IncomingAction parse() throws IOException {
        int payloadSize = _din.readInt();
        int msgId = _din.readUnsignedByte();
        
        byte [] bytes = new byte[payloadSize-5];
        _din.read(bytes, 0, payloadSize-5);
        
        IncomingAction iaParser = _incomingActionMapper.get(msgId);
        IncomingAction ia = null;
        if(iaParser != null) {
            ia = iaParser.fromBytes(bytes);
        }
        System.out.println(msgId + " " + payloadSize + " " + ia);
        return ia;
    }
    
    /**
     * from decompiled code
     * this.data.clear();
    _loc2_.writeToOutput(this.data);
    this.data.position=0;
    if(this._outgoingCipher!=null)
    {
       this._outgoingCipher.encrypt(this.data);
       this.data.position=0;
    }
    this._tcpSocket.writeInt(this.data.bytesAvailable+5);
    this._tcpSocket.writeByte(_loc2_.id);
    this._tcpSocket.writeBytes(this.data);
     */
    @Override
    public void sendToNetwork(OutgoingAction outgoing) {
        // TODO Auto-generated method stub
        
    }

}
