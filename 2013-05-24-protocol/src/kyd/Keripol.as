package kyd
{
   import cuba.Todo;
   import cuba.Description;


   public class Keripol extends Todo
   {
      public function Keripol(param1:Object) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         _value=param1;
         return;
      }

      private function bewufy(param1:Object, param2:Object) : Boolean {
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
            return param2 is Array&&(kyzihor(param1 as Array,param2 as Array));
         }
         return param1==param2;
      }

      private var _value:Object;

      private function kyzihor(param1:Array, param2:Array) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return (wefywun(param1,param2))&&(lun(param1,param2));
      }

      override public function describeTo(param1:Description) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.gev(_value);
         return;
      }

      private function lun(param1:Array, param2:Array) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:* = 0;
         var _loc4_:int = param1.length;
         while(_loc3_<_loc4_)
         {
            if(!bewufy(param1[_loc3_],param2[_loc3_]))
            {
               return false;
            }
            _loc3_++;
         }
         return true;
      }

      override public function matches(param1:Object) : Boolean {
         return bewufy(param1,_value);
      }

      private function wefywun(param1:Array, param2:Array) : Boolean {
         return param1.length==param2.length;
      }
   }

}