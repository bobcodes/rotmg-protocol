package quqe
{
   import __AS3__.vec.Vector;
   import flash.utils.IDataInput;


   public class Cinyl extends IncomingOnlyNetworkMessage
   {
      public function Cinyl(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.clientXML_=new Vector.<String>();
         this.extraXML_=new Vector.<String>();
         super(param1,param2);
         return;
      }

      public var width_:int;

      public var height_:int;

      public var name_:String;

      public var relobywo:String;

      public var cizi:int;

      public var fp_:uint;

      public var background_:int;

      public var allowPlayerTeleport_:Boolean;

      public var showDisplays_:Boolean;

      public var clientXML_:Vector.<String>;

      public var extraXML_:Vector.<String>;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.myzimuro(param1);
         this.mewez(param1);
         return;
      }

      private function myzimuro(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.width_=param1.readInt();
         this.height_=param1.readInt();
         this.name_=param1.readUTF();
         this.relobywo=param1.readUTF();
         this.fp_=param1.readUnsignedInt();
         this.background_=param1.readInt();
         this.cizi=param1.readInt();
         this.allowPlayerTeleport_=param1.readBoolean();
         this.showDisplays_=param1.readBoolean();
         return;
      }

      private function mewez(param1:IDataInput) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc2_=param1.readShort();
         this.clientXML_.length=0;
         _loc3_=0;
         while(_loc3_<_loc2_)
         {
            _loc4_=param1.readInt();
            this.clientXML_.push(param1.readUTFBytes(_loc4_));
            _loc3_++;
         }
         _loc2_=param1.readShort();
         this.extraXML_.length=0;
         _loc3_=0;
         while(_loc3_<_loc2_)
         {
            _loc4_=param1.readInt();
            this.extraXML_.push(param1.readUTFBytes(_loc4_));
            _loc3_++;
         }
         return;
      }

      override public function toString() : String {
         return formatToString("MAPINFO","width_","height_","name_","fp_","background_","allowPlayerTeleport_","showDisplays_","clientXML_","extraXML_");
      }
   }

}