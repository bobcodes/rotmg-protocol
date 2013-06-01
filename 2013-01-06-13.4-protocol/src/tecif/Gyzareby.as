package tecif
{
[CLASS1689]

   public class Gyzareby extends BaseDescription
   {
      public function Gyzareby() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         clear();
         return;
      }

      public static function toString(param1:Honypizu) : String {
         return new Gyzareby().bubejyt(param1).toString();
      }

      override protected function append(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         coqi=coqi+String(param1);
         return;
      }

      override public function toString() : String {
         return coqi;
      }

      public function clear() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         coqi="";
         return;
      }

      private var coqi:String;
   }
[/CLASS]
}