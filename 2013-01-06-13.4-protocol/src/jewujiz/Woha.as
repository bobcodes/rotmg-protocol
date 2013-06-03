package jewujiz
{
[CLASS236]   import tysenyzy.Zovisis;
   import fucyquzu.Kipoqik;
   import fucyquzu.Meto;
   import lymotyp.Sufit;
   import mywyvuryw.MapInfoMsg;


   public class Woha extends Zovisis
   {
      public function Woha() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Zacul;

      public var rejys:Kipoqik;

      public var qam:Meto;

      public var qehyqycep:Sufit;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.pylubuvo(this.qehyqycep.make());
         this.rejys.addOnce(this.dycy);
         this.qam.add(this.pidot);
         return;
      }

      private function dycy(param1:MapInfoMsg) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.jiga(param1.momebujot,param1.dem);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qam.remove(this.pidot);
         return;
      }

      private function pidot() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.disable();
         return;
      }
   }
[/CLASS]
}