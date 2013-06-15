package wipivyv
{
   import dovuz.Qamyro;
   import flash.utils.IDataInput;


   public class Rys extends Qamyro
   {
      public function Rys(param1:uint, param2:Function=null) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var type:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.type=param1.readInt();
         return;
      }
   }

}