package nyri
{
   import flash.utils.Dictionary;


   public class Cenezadi extends Object
   {
      public function Cenezadi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static function kafome(param1:Dictionary) : Array {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Object = null;
         var _loc2_:Array = new Array();
         for (_loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }

      public static function kyp(param1:Dictionary) : Array {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Object = null;
         var _loc2_:Array = new Array();
         for each (_loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
   }

}