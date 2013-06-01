package mafu
{
   import johazoq.DateField;


   public class Ludasy extends Object
   {
      public function Ludasy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static function felyfod(param1:DateField) : uint {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Date = new Date(mypumo(param1));
         var _loc3_:Date = new Date();
         var _loc4_:uint = Number(_loc3_.fullYear)-Number(_loc2_.fullYear);
         if(_loc2_.month>_loc3_.month||_loc2_.month==_loc3_.month&&_loc2_.date>_loc3_.date)
         {
            _loc4_--;
         }
         return _loc4_;
      }

      public static function mypumo(param1:DateField) : uint {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = param1.tole.text+"/"+param1.days.text+"/"+param1.buruke.text;
         return Date.parse(_loc2_);
      }
   }

}