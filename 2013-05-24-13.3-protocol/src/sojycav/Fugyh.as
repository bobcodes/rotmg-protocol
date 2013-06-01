package sojycav
{
   import komawowag.Becepog;
   import kyco.Nun;
   import valatom.Bobibu;
   import komawowag.Net;
   import flash.display.DisplayObjectContainer;
   import fozo.Kamyzona;
   import jebaraqeq.Fivyjysej;


   public class Fugyh extends Object
   {
      public function Fugyh(param1:Net, param2:Bobibu) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.hycekuj=param1.peroq(this);
         this.pub=param1.cemohoqal;
         this.mykyhagew=param2;
         param1.fyf.mapuzojo(this.destroy);
         this.init();
         return;
      }

      private const rafegimak:String = Fivyjysej.create(Fugyh);

      private var hycekuj:Becepog;

      private var pub:Nun;

      private var mykyhagew:Bobibu;

      private var qymymyfa:Net;

      public function toString() : String {
         return this.rafegimak;
      }

      private function init() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:DisplayObjectContainer = null;
         for each (_loc1_ in this.mykyhagew.rebizozub)
         {
            this.hycekuj.debug("Adding context existence event listener to container {0}",[_loc1_]);
            _loc1_.addEventListener(ModularContextEvent.qohoqace,this.doqafava);
         }
         this.mykyhagew.addEventListener(Kamyzona.tebowomyq,this.zehejul);
         this.mykyhagew.addEventListener(Kamyzona.wimug,this.genileda);
         return;
      }

      private function destroy() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:DisplayObjectContainer = null;
         for each (_loc1_ in this.mykyhagew.rebizozub)
         {
            this.hycekuj.debug("Removing context existence event listener from container {0}",[_loc1_]);
            _loc1_.removeEventListener(ModularContextEvent.qohoqace,this.doqafava);
         }
         this.mykyhagew.removeEventListener(Kamyzona.tebowomyq,this.zehejul);
         this.mykyhagew.removeEventListener(Kamyzona.wimug,this.genileda);
         if(this.qymymyfa)
         {
            this.hycekuj.debug("Unlinking parent injector for child context {0}",[this.qymymyfa]);
            this.qymymyfa.cemohoqal.wucovasol=null;
         }
         return;
      }

      private function zehejul(param1:Kamyzona) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hycekuj.debug("Adding context existence event listener to container {0}",[param1.container]);
         param1.container.addEventListener(ModularContextEvent.qohoqace,this.doqafava);
         return;
      }

      private function genileda(param1:Kamyzona) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hycekuj.debug("Removing context existence event listener from container {0}",[param1.container]);
         param1.container.removeEventListener(ModularContextEvent.qohoqace,this.doqafava);
         return;
      }

      private function doqafava(param1:ModularContextEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.stopImmediatePropagation();
         this.qymymyfa=param1.context;
         this.hycekuj.debug("Context existence event caught. Configuring child context {0}",[this.qymymyfa]);
         this.qymymyfa.cemohoqal.wucovasol=this.pub;
         return;
      }
   }

}