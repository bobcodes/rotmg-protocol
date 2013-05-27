package ruwysepyd
{
   import qov.Kalefu;
   import aaa.rotmg.ui.ServersScreenUI;
   import aaa.rotmg.ui.ServersContainer;
   import raqu.Calogu;


   public class Zisifo extends Kalefu
   {
      public function Zisifo() {
         super();
         return;
      }

      public var view:ServersScreenUI;

      public var servers:ServersContainer;

      public var zogytuso:Calogu;

      override public function initialize() : void {
         this.view.sewig.add(this.tih);
         this.view.initialize(this.servers.getServers());
         return;
      }

      override public function destroy() : void {
         this.view.sewig.remove(this.tih);
         return;
      }

      private function tih() : void {
         this.zogytuso.dispatch(new TitleView());
         return;
      }
   }

}