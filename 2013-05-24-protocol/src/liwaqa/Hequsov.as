package liwaqa
{
   import qov.Kalefu;
   import zokece.Zokyfymus;
   import zokece.Buquk;
   import kynusa.Hesawaqela;
   import damul.Qyfa;


   public class Hequsov extends Kalefu
   {
      public function Hequsov() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var jagociwu:Zokyfymus;

      public var view:PackageButton;

      public var pitosad:Buquk;

      public var qemaryty:Hesawaqela;

      private var vifa:Qyfa;

      private var con:Boolean;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pitosad.vehi.add(this.wor);
         this.view.siperu.add(this.qikupaniv);
         this.view.init();
         if(this.pitosad.havuv())
         {
            this.jaribosod();
         }
         else
         {
            this.view.visible=false;
            this.jagociwu.start();
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.siperu.remove(this.qikupaniv);
         if(this.con)
         {
            this.vifa.myma.remove(this.tatedyl);
            this.vifa.kaweru.remove(this.jeboluw);
            this.vifa.vehi.remove(this.wor);
         }
         return;
      }

      private function jeboluw(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.diquhuku(param1);
         return;
      }

      private function tatedyl(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1<=0)
         {
            this.view.visible=false;
         }
         else
         {
            this.view.futara(param1);
         }
         return;
      }

      private function wor() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.visible=true;
         this.jaribosod();
         return;
      }

      private function jaribosod() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vifa=this.pitosad.hihile();
         this.con=true;
         this.vifa.myma.add(this.tatedyl);
         this.vifa.kaweru.add(this.jeboluw);
         this.view.diquhuku(this.vifa.komyby());
         this.view.futara(this.vifa.quantity);
         return;
      }

      private function qikupaniv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qemaryty.dispatch(this.pitosad.hihile().packageID);
         return;
      }
   }

}