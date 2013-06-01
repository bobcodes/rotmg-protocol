package rosebo
{


   public class Ruwatum extends Object
   {
      public function Ruwatum(param1:String, param2:String="") {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.name=param1;
         this.data=param2;
         return;
      }

      public var name:String;

      public var data:String;

      public function toString() : String {
         return this.data;
      }
   }

}