package wipivyv
{
   import flash.utils.IDataInput;


   public class Jybunez extends Tezypama
   {
      public function Jybunez(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var zezana:int;

      public var noze:int;

      public var ruso:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zezana=param1.readInt();
         this.noze=param1.readInt();
         this.ruso=param1.readInt();
         return;
      }
   }

}