package koqajopoq
{
   import flash.utils.Dictionary;


   public class Gory extends Object
   {
      public function Gory() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static function naqihib(param1:Dictionary) : Array {
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

      public static function bucyqyl(param1:Dictionary) : Array {
         var _loc6_:* = false;
         var _loc7_:* = true;
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