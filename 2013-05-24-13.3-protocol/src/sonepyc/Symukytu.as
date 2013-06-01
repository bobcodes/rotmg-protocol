package sonepyc
{
   import com.company.assembleegameclient.objects.Player;
   import flash.utils.IDataOutput;


   public class Symukytu extends OutgoingOnlyNetworkMessage
   {
      public function Symukytu(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var skinID:int;

      public var player:Player;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeInt(this.skinID);
         return;
      }

      override public function consume() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super.consume();
         this.player=null;
         return;
      }

      override public function toString() : String {
         return formatToString("RESKIN","skinID");
      }
   }

}