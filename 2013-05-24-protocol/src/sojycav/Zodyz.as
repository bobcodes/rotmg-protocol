package sojycav
{
   import komawowag.Becepog;
   import kyco.Nun;
   import flash.display.DisplayObjectContainer;
   import komawowag.Net;
   import jebaraqeq.Fivyjysej;


   public class Zodyz extends Object
   {
      public function Zodyz(param1:Net, param2:DisplayObjectContainer) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.hycekuj=param1.peroq(this);
         this.pub=param1.cemohoqal;
         this.susun=param2;
         param1.fyf.mapuzojo(this.destroy);
         this.init();
         return;
      }

      private const rafegimak:String = Fivyjysej.create(Zodyz);

      private var hycekuj:Becepog;

      private var pub:Nun;

      private var susun:DisplayObjectContainer;

      private var qymymyfa:Net;

      public function toString() : String {
         return this.rafegimak;
      }

      private function init() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hycekuj.debug("Listening for context existence events on contextView {0}",[this.susun]);
         this.susun.addEventListener(ModularContextEvent.qohoqace,this.doqafava);
         return;
      }

      private function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hycekuj.debug("Removing modular context existence event listener from contextView {0}",[this.susun]);
         this.susun.removeEventListener(ModularContextEvent.qohoqace,this.doqafava);
         if(this.qymymyfa)
         {
            this.hycekuj.debug("Unlinking parent injector for child context {0}",[this.qymymyfa]);
            this.qymymyfa.cemohoqal.wucovasol=null;
         }
         return;
      }

      private function doqafava(param1:ModularContextEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stopImmediatePropagation();
         this.qymymyfa=param1.context;
         this.hycekuj.debug("Context existence event caught. Configuring child context {0}",[this.qymymyfa]);
         this.qymymyfa.cemohoqal.wucovasol=this.pub;
         return;
      }
   }

}