package firo
{
   import dovuz.Qamyro;
   import flash.utils.IDataInput;


   public class Jicogu extends Qamyro
   {
      public function Jicogu(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      override public final function parseFromInput(param1:IDataInput) : void {
         throw new Error("Client should not receive "+id+" messages");
      }
   }

}