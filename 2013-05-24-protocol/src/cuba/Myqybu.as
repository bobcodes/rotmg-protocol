package cuba
{


   public class Myqybu extends BaseDescription
   {
      public function Myqybu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         clear();
         return;
      }

      public static function toString(param1:Jypipeqe) : String {
         return new Myqybu().gebaz(param1).toString();
      }

      override protected function append(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         rameremyz=rameremyz+String(param1);
         return;
      }

      override public function toString() : String {
         return rameremyz;
      }

      public function clear() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         rameremyz="";
         return;
      }

      private var rameremyz:String;
   }

}