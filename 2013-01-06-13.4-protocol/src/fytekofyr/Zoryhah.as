package fytekofyr
{
[CLASS220]   import tysenyzy.Zovisis;
   import dutes.Zevazogo;
   import dutes.Soz;
   import pigeguwo.Jazyv;


   public class Zoryhah extends Zovisis
   {
      public function Zoryhah() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Kakuqyf;

      public var goma:Zevazogo;

      public var titurusyn:Soz;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.goma.add(this.gatyri);
         this.titurusyn.add(this.qajot);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.goma.remove(this.gatyri);
         this.titurusyn.remove(this.qajot);
         return;
      }

      private function gatyri(param1:Jazyv) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.show(param1);
         return;
      }

      private function qajot() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.hide();
         return;
      }
   }
[/CLASS]
}