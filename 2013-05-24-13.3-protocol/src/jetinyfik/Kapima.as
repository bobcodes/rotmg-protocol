package jetinyfik
{
   import qov.Kalefu;
   import janopep.Ger;
   import janopep.Dog;
   import dojule.Zofyneke;
   import quqe.Cinyl;


   public class Kapima extends Kalefu
   {
      public function Kapima() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Jilogi;

      public var tewo:Ger;

      public var hovu:Dog;

      public var qivigene:Zofyneke;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.begipo(this.qivigene.make());
         this.tewo.addOnce(this.kyty);
         this.hovu.add(this.rytyneby);
         return;
      }

      private function kyty(param1:Cinyl) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.bupyj(param1.relobywo,param1.cizi);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hovu.remove(this.rytyneby);
         return;
      }

      private function rytyneby() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.disable();
         return;
      }
   }

}