package buf
{


   public class Fusij extends BaseDescription
   {
      public function Fusij() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         clear();
         return;
      }

      public static function toString(param1:Rysamev) : String {
         return new Fusij().nozyf(param1).toString();
      }

      override protected function append(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         gosihotuh=gosihotuh+String(param1);
         return;
      }

      override public function toString() : String {
         return gosihotuh;
      }

      public function clear() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         gosihotuh="";
         return;
      }

      private var gosihotuh:String;
   }

}