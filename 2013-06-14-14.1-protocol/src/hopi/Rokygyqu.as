package hopi
{
   import tytojonib.Kyjefe;
   import cizagamym.Dynydo;
   import cizagamym.Boquzojul;
   import cizagamym.Lebovas;
   import cizagamym.Wudarozy;
   import cizagamym.Pafe;
   import cizagamym.Zadokop;
   import flash.display.Sprite;


   public class Rokygyqu extends Kyjefe
   {
      public function Rokygyqu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Cilafybiz;

      public var loqu:Dynydo;

      public var ridecy:Boquzojul;

      public var gimenakal:Lebovas;

      public var kyquj:Wudarozy;

      public var qoderi:Pafe;

      public var luluzaq:Zadokop;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kyquj.add(this.bedi);
         this.ridecy.add(this.zehorenej);
         this.loqu.add(this.surucedi);
         this.gimenakal.add(this.cefodej);
         this.qoderi.add(this.jado);
         this.luluzaq.add(this.qac);
         return;
      }

      private function jado(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.push(param1);
         return;
      }

      private function qac() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.pop();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kyquj.remove(this.bedi);
         this.ridecy.remove(this.zehorenej);
         this.loqu.remove(this.surucedi);
         this.gimenakal.remove(this.cefodej);
         this.qoderi.remove(this.jado);
         this.luluzaq.remove(this.qac);
         return;
      }

      private function bedi(param1:int=1381653) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.wydyra(param1);
         return;
      }

      private function zehorenej(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.show(param1,true);
         return;
      }

      private function surucedi(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.show(param1,false);
         return;
      }

      private function cefodej() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.stage.focus=null;
         this.view.jogugili();
         return;
      }
   }

}