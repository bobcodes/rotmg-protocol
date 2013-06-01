package wyjimigo
{
[CLASS848]

   public final class Tabyr extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tabyr(param1:Number, param2:Number) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.pero=param1;
         this.gojun=param2;
         return;
      }

      private static const rebabatys:Number = 180/Math.PI;

      private static const sylecuhy:Number = Math.PI/180;

      private static const piwyvigu:Number = 60*1.1515*1.609344*1000;

      public static function distance(param1:Tabyr, param2:Tabyr) : Number {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:Number = sylecuhy*(param1.gojun-param2.gojun);
         var _loc4_:Number = sylecuhy*param1.pero;
         var _loc5_:Number = sylecuhy*param2.pero;
         var _loc6_:Number = Math.sin(_loc4_)*Math.sin(_loc5_)+Math.cos(_loc4_)*Math.cos(_loc5_)*Math.cos(_loc3_);
         _loc6_=rebabatys*Math.acos(_loc6_)*piwyvigu;
         return _loc6_;
      }

      public var pero:Number;

      public var gojun:Number;

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "("+this.pero+", "+this.gojun+")";
      }
   }
[/CLASS]
}