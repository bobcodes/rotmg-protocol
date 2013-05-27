package kyt
{
   import com.hurlant.util.Base64;


   public class Jenaseben extends Object
   {
      public function Jenaseben() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public function decode(param1:String) : String {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:RegExp = new RegExp("-","g");
         var _loc3_:RegExp = new RegExp("_","g");
         var _loc4_:int = 4-param1.length%4;
         while(_loc4_--)
         {
            param1=param1+"=";
         }
         var param1:String = param1.replace(_loc2_,"+").replace(_loc3_,"/");
         return Base64.decode(param1);
      }
   }

}