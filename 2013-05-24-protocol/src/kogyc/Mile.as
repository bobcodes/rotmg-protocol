package kogyc
{


   public final class Mile extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Mile(param1:Number, param2:Number) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.lukenihi=param1;
         this.lekejyhy=param2;
         return;
      }

      private static const sus:Number = 180/Math.PI;

      private static const ryruric:Number = Math.PI/180;

      private static const caciw:Number = 60*1.1515*1.609344*1000;

      public static function distance(param1:Mile, param2:Mile) : Number {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:Number = ryruric*(param1.lekejyhy-param2.lekejyhy);
         var _loc4_:Number = ryruric*param1.lukenihi;
         var _loc5_:Number = ryruric*param2.lukenihi;
         var _loc6_:Number = Math.sin(_loc4_)*Math.sin(_loc5_)+Math.cos(_loc4_)*Math.cos(_loc5_)*Math.cos(_loc3_);
         _loc6_=sus*Math.acos(_loc6_)*caciw;
         return _loc6_;
      }

      public var lukenihi:Number;

      public var lekejyhy:Number;

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "("+this.lukenihi+", "+this.lekejyhy+")";
      }
   }

}