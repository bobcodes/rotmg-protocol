package zegacymo
{
[CLASS1369]   import depyw.DateField;


   public class Qebamuten extends Object
   {
      public function Qebamuten() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static function masyk(param1:DateField) : uint {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Date = new Date(folim(param1));
         var _loc3_:Date = new Date();
         var _loc4_:uint = Number(_loc3_.fullYear)-Number(_loc2_.fullYear);
         if(_loc2_.month>_loc3_.month||_loc2_.month==_loc3_.month&&_loc2_.date>_loc3_.date)
         {
            _loc4_--;
         }
         return _loc4_;
      }

      public static function folim(param1:DateField) : uint {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = param1.zifag.text+"/"+param1.days.text+"/"+param1.wyfufi.text;
         return Date.parse(_loc2_);
      }
   }
[/CLASS]
}