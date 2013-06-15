package wusepiboz
{
   import buf.Kolisywab;
   import buf.Description;


   public class Qafazu extends Kolisywab
   {
      public function Qafazu(param1:Object) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         _value=param1;
         return;
      }

      private function baryr(param1:Object, param2:Object) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(isNaN(param1 as Number))
         {
            return isNaN(param2 as Number);
         }
         if(param1==null)
         {
            return param2==null;
         }
         if(param1 is Array)
         {
            return param2 is Array&&(zogele(param1 as Array,param2 as Array));
         }
         return param1==param2;
      }

      private var _value:Object;

      private function zogele(param1:Array, param2:Array) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return (tuwofom(param1,param2))&&(lufuce(param1,param2));
      }

      override public function describeTo(param1:Description) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.siw(_value);
         return;
      }

      private function lufuce(param1:Array, param2:Array) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = 0;
         var _loc4_:int = param1.length;
         while(_loc3_<_loc4_)
         {
            if(!baryr(param1[_loc3_],param2[_loc3_]))
            {
               return false;
            }
            _loc3_++;
         }
         return true;
      }

      override public function matches(param1:Object) : Boolean {
         return baryr(param1,_value);
      }

      private function tuwofom(param1:Array, param2:Array) : Boolean {
         return param1.length==param2.length;
      }
   }

}