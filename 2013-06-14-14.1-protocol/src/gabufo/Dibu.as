package gabufo
{
   import zoqabel.DateField;


   public class Dibu extends Object
   {
      public function Dibu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static function boq(param1:DateField) : uint {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Date = new Date(felyt(param1));
         var _loc3_:Date = new Date();
         var _loc4_:uint = Number(_loc3_.fullYear)-Number(_loc2_.fullYear);
         if(_loc2_.month>_loc3_.month||_loc2_.month==_loc3_.month&&_loc2_.date>_loc3_.date)
         {
            _loc4_--;
         }
         return _loc4_;
      }

      public static function felyt(param1:DateField) : uint {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = param1.jahufeqi.text+"/"+param1.days.text+"/"+param1.lezysi.text;
         return Date.parse(_loc2_);
      }
   }

}