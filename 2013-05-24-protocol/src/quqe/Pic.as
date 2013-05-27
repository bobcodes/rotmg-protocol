package quqe
{
   import flash.display.BitmapData;
   import flash.utils.IDataInput;
   import flash.utils.ByteArray;


   public class Pic extends Tego
   {
      public function Pic(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var bitmapData_:BitmapData = null;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:int = param1.readInt();
         var _loc3_:int = param1.readInt();
         var _loc4_:ByteArray = new ByteArray();
         param1.readBytes(_loc4_,0,_loc2_*_loc3_*4);
         this.bitmapData_=new BitmapData(_loc2_,_loc3_);
         this.bitmapData_.setPixels(this.bitmapData_.rect,_loc4_);
         return;
      }

      override public function toString() : String {
         return formatToString("PIC","bitmapData_");
      }
   }

}