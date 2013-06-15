package mavew
{


   public class Taz extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Taz() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const nulotuf:uint = 65280;

      public static const gekeziji:uint = 16711680;

      public static const tejy:uint = 16777103;

      public static function matosedib(param1:String, param2:String) : String {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = "<font color=\""+param2+"\">"+param1+"</font>";
         return _loc3_;
      }

      public static function humuhujig(param1:uint) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return "<font color=\"#"+param1.toString(16)+"\">";
      }

      public static function vepiq() : String {
         return "</font>";
      }

      public static function fijov(param1:Number) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Number = param1-int(param1);
         return int(_loc2_*10)==0?int(param1).toString():param1.toFixed(1);
      }

      public static function musybiboj(param1:Number) : uint {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1<0)
         {
            return gekeziji;
         }
         if(param1>0)
         {
            return nulotuf;
         }
         return tejy;
      }
   }

}