package quqe
{
   import flash.utils.IDataInput;


   public class Magosuc extends IncomingOnlyNetworkMessage
   {
      public function Magosuc(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var name_:String;

      public var guildName_:String;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.name_=param1.readUTF();
         this.guildName_=param1.readUTF();
         return;
      }

      override public function toString() : String {
         return formatToString("INVITEDTOGUILD","name_","guildName_");
      }
   }

}