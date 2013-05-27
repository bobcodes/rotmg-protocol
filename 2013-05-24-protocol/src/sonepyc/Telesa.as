package sonepyc
{
   import flash.utils.IDataOutput;


   public class Telesa extends OutgoingOnlyNetworkMessage
   {
      public function Telesa(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var guildName_:String;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeUTF(this.guildName_);
         return;
      }

      override public function toString() : String {
         return formatToString("JOINGUILD","guildName_");
      }
   }

}