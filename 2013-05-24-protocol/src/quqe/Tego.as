package quqe
{
   import aaa.rotmg.net.NetworkMessage;
   import flash.utils.IDataOutput;


   public class Tego extends NetworkMessage
   {
      public function Tego(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      override public final function writeToOutput(param1:IDataOutput) : void {
         throw new Error("Client should not send "+id+" messages");
      }
   }

}