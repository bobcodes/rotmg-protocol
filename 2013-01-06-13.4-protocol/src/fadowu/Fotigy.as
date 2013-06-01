package fadowu
{
[CLASS1318]   import com.company.assembleegameclient.objects.Player;
   import flash.utils.IDataOutput;


   public class Fotigy extends Jelo
   {
      public function Fotigy(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         super.consume();
         this.player=null;
         return;
      }

      override public function toString() : String {
         return formatToString("RESKIN","skinID");
      }
   }
[/CLASS]
}