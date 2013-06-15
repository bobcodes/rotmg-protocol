package wipivyv
{
   import dovuz.Qamyro;
   import flash.utils.IDataOutput;


   public class Tezypama extends Qamyro
   {
      public function Tezypama(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      override public final function writeToOutput(param1:IDataOutput) : void {
         throw new Error("Client should not send "+id+" messages");
      }
   }

}