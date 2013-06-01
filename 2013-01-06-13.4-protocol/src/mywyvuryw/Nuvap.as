package mywyvuryw
{
[CLASS1510]   import flash.utils.ByteArray;
   import flash.utils.IDataInput;


   public class Nuvap extends Daqu
   {
      public function Nuvap(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.key_=new ByteArray();
         super(param1,param2);
         return;
      }

      public var name_:String;

      public var host_:String;

      public var port_:int;

      public var gameId_:int;

      public var keyTime_:int;

      public var key_:ByteArray;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.name_=param1.readUTF();
         this.host_=param1.readUTF();
         this.port_=param1.readInt();
         this.gameId_=param1.readInt();
         this.keyTime_=param1.readInt();
         var _loc2_:int = param1.readShort();
         this.key_.length=0;
         param1.readBytes(this.key_,0,_loc2_);
         return;
      }

      override public function toString() : String {
         return formatToString("RECONNECT","name_","host_","port_","gameId_","keyTime_","key_");
      }
   }
[/CLASS]
}