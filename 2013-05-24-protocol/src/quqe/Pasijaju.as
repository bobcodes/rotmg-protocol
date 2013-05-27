package quqe
{
   import flash.utils.IDataInput;


   public class Pasijaju extends Tego
   {
      public function Pasijaju(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var mosakymu:int;

      public var vevesy:int;

      public var lumitynac:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mosakymu=param1.readInt();
         this.vevesy=param1.readInt();
         this.lumitynac=param1.readInt();
         return;
      }
   }

}