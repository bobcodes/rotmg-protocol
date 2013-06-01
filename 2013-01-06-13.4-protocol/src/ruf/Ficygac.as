package ruf
{
[CLASS188]   import kirofyny.Hehuf;
   import golac.Juc;


   public class Ficygac extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Ficygac() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const laj:String = "Package Purchased";

      private static const ludus:String = "You\'ve already purchased this package!";

      private static const hyhiqec:String = "Please check your vault for any items purchased";

      public var lyhog:Hehuf;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lyhog.dispatch(this.biw());
         return;
      }

      private function biw() : Juc {
         return new Juc().setTitle(laj).setBody(ludus,hyhiqec);
      }
   }
[/CLASS]
}