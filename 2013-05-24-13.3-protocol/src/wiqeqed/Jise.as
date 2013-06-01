package wiqeqed
{
   import qov.Kalefu;
   import kynusa.Hesawaqela;
   import rejukohub.Qupyz;
   import lijite.Nyzena;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import lijite.Rifun;


   public class Jise extends Kalefu
   {
      public function Jise() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Kitafer;

      public var qemaryty:Hesawaqela;

      public var nafur:Qupyz;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.pezebo.add(this.tenuvedy);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.pezebo.remove(this.tenuvedy);
         return;
      }

      private function tenuvedy(param1:Nyzena) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:URLRequest = null;
         switch(param1.linkType)
         {
            case Rifun.vyda:
               _loc2_=new URLRequest(param1.linkDetail);
               navigateToURL(_loc2_,"_blank");
               break;
            case Rifun.jomyze:
               this.qemaryty.dispatch(int(param1.linkDetail));
               break;
            case Rifun.byraw:
               this.nafur.dispatch(param1.linkDetail);
               break;
         }
         return;
      }
   }

}