package rotmg.actions.incoming;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.google.common.base.Charsets;

import rotmg.actions.IncomingAction;

public class MapInfoAction implements IncomingAction {


    /**
      public var width_:int;
      public var height_:int;
      public var name_:String;
      public var momebujot:String;
      public var dem:int;
      public var fp_:uint;
      public var background_:int;
      public var allowPlayerTeleport_:Boolean;
      public var showDisplays_:Boolean;
      public var clientXML_:Vector.<String>;
      public var extraXML_:Vector.<String>;
     */
    private final int width;
    private final int height;
    private final String name;
    private final String momebujot;
    private final int dem;
    private final long fp_;
    private final int background;
    private final boolean allowPlayerToTeleport;
    private final boolean showDisplays;
    private final List<String> clientXML;
    private final List<String> extraXML;
    
    public MapInfoAction() {
        this(-1, -1, null, null, -1, -1, -1, false, false, null, null);
    }
    
    public MapInfoAction(int width, int height, String name, String momebujot,
            int dem, long fp_, int background, boolean allowPlayerToTeleport,
            boolean showDisplays, List<String> clientXML, List<String> extraXML) {
        this.width = width;
        this.height = height;
        this.name = name;
        this.momebujot = momebujot;
        this.dem = dem;
        this.fp_ = fp_;
        this.background = background;
        this.allowPlayerToTeleport = allowPlayerToTeleport;
        this.showDisplays = showDisplays;
        this.clientXML = clientXML;
        this.extraXML = extraXML;
    }
    
    public int getWidth() {
        return width;
    }

    public int getHeight() {
        return height;
    }

    public String getName() {
        return name;
    }

    public String getMomebujot() {
        return momebujot;
    }

    public int getDem() {
        return dem;
    }

    public long getFp_() {
        return fp_;
    }

    public int getBackground() {
        return background;
    }

    public boolean isAllowPlayerToTeleport() {
        return allowPlayerToTeleport;
    }

    public boolean isShowDisplays() {
        return showDisplays;
    }

    public List<String> getClientXML() {
        return clientXML;
    }

    public List<String> getExtraXML() {
        return extraXML;
    }

    /**
     * 
         this.width_=param1.readInt();
         this.height_=param1.readInt();
         this.name_=param1.readUTF();
         this.momebujot=param1.readUTF();
         this.fp_=param1.readUnsignedInt();
         this.background_=param1.readInt();
         this.dem=param1.readInt();
         this.allowPlayerTeleport_=param1.readBoolean();
         this.showDisplays_=param1.readBoolean();
         
         var numOfStrings:* = 0;
         var currentStringNum:* = 0;
         var numOfStringBytes:* = 0;
         numOfStrings=param1.readShort();
         this.clientXML_.length=0;
         currentStringNum=0;
         while(currentStringNum<numOfStrings)
         {
            numOfStringBytes=param1.readInt();
            this.clientXML_.push(param1.readUTFBytes(numOfStringBytes));
            currentStringNum++;
         }
         numOfStrings=param1.readShort();
         this.extraXML_.length=0;
         currentStringNum=0;
         while(currentStringNum<numOfStrings)
         {
            numOfStringBytes=param1.readInt();
            this.extraXML_.push(param1.readUTFBytes(numOfStringBytes));
            currentStringNum++;
         }
     */
    @Override
    public IncomingAction fromBytes(byte[] bytes) throws IOException {
        try (   ByteArrayInputStream bin = new ByteArrayInputStream(bytes);
                DataInputStream din = new DataInputStream(bin)) {
        
            int width=din.readInt();
            int height=din.readInt();
            String name=din.readUTF();
            String momebujot=din.readUTF();
            long fp=din.readInt();
            fp=fp & 0xffffffffL; // convert from signed int, to unsigned
            int background_=din.readInt();
            int dem=din.readInt();
            boolean allowPlayerTeleport=din.readBoolean();
            boolean showDisplays=din.readBoolean();

            List<String> clientXML = parseStringList(din);
            List<String> extraXML = parseStringList(din);
            
            return new MapInfoAction(width, height, name, momebujot, dem, fp, background_, allowPlayerTeleport, showDisplays, clientXML, extraXML);
        }
    }

    /**
         var numOfStrings:* = 0;
         var currentStringNum:* = 0;
         var numOfStringBytes:* = 0;
         numOfStrings=param1.readShort();
         this.clientXML_.length=0;
         currentStringNum=0;
         while(currentStringNum<numOfStrings)
         {
            numOfStringBytes=param1.readInt();
            this.clientXML_.push(param1.readUTFBytes(numOfStringBytes));
            currentStringNum++;
         }
     */
    private List<String> parseStringList(DataInputStream din) throws IOException {
        List<String> stringList = new ArrayList<>();
        
        int numOfStrings = din.readShort();
        for(int i = 0; i < numOfStrings; i++) {
            int numOfStringBytes = din.readInt();
            byte[] stringBytes = new byte[numOfStringBytes];
            din.read(stringBytes, 0, numOfStringBytes);
            stringList.add(new String(stringBytes, Charsets.UTF_8));
        }
        
        return stringList;
    }

    @Override
    public int getMessageId() {
        return 60;
    }

    @Override
    public String toString() {
        return "MapInfoAction [width=" + width + ", height=" + height
                + ", name=" + name + ", momebujot=" + momebujot + ", dem="
                + dem + ", fp_=" + fp_ + ", background=" + background
                + ", allowPlayerToTeleport=" + allowPlayerToTeleport
                + ", showDisplays=" + showDisplays + ", clientXML=" + clientXML
                + ", extraXML=" + extraXML + "]";
    }

    
}
