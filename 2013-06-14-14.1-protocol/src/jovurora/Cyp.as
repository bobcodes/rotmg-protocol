package jovurora
{


   public final class Cyp extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Cyp(param1:Number, param2:Number) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.tobuciryf=param1;
         this.huze=param2;
         return;
      }

      private static const ven:Number = 180/Math.PI;

      private static const pequtina:Number = Math.PI/180;

      private static const sotub:Number = 60*1.1515*1.609344*1000;

      public static function distance(param1:Cyp, param2:Cyp) : Number {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:Number = pequtina*(param1.huze-param2.huze);
         var _loc4_:Number = pequtina*param1.tobuciryf;
         var _loc5_:Number = pequtina*param2.tobuciryf;
         var _loc6_:Number = Math.sin(_loc4_)*Math.sin(_loc5_)+Math.cos(_loc4_)*Math.cos(_loc5_)*Math.cos(_loc3_);
         _loc6_=ven*Math.acos(_loc6_)*sotub;
         return _loc6_;
      }

      public var tobuciryf:Number;

      public var huze:Number;

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "("+this.tobuciryf+", "+this.huze+")";
      }
   }

}