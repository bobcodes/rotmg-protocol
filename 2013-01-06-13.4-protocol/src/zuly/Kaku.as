package zuly
{
[CLASS1009]   import bikyvym.Voduzak;
   import pogefeqeh.Wahovy;
   import flash.display.DisplayObjectContainer;
   import bikyvym.Cedymynet;
   import fomykuq.Sedubali;


   public class Kaku extends Object
   {
      public function Kaku(param1:Cedymynet, param2:DisplayObjectContainer) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.vuwir=param1.diruboli(this);
         this.qod=param1.viqelo;
         this.qaletet=param2;
         param1.sutu.hypyry(this.destroy);
         this.init();
         return;
      }

      private const pubutahic:String = Sedubali.create(Kaku);

      private var vuwir:Voduzak;

      private var qod:Wahovy;

      private var qaletet:DisplayObjectContainer;

      private var worakywe:Cedymynet;

      public function toString() : String {
         return this.pubutahic;
      }

      private function init() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vuwir.debug("Listening for context existence events on contextView {0}",[this.qaletet]);
         this.qaletet.addEventListener(ModularContextEvent.tugy,this.getarun);
         return;
      }

      private function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vuwir.debug("Removing modular context existence event listener from contextView {0}",[this.qaletet]);
         this.qaletet.removeEventListener(ModularContextEvent.tugy,this.getarun);
         if(this.worakywe)
         {
            this.vuwir.debug("Unlinking parent injector for child context {0}",[this.worakywe]);
            this.worakywe.viqelo.waboka=null;
         }
         return;
      }

      private function getarun(param1:ModularContextEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.stopImmediatePropagation();
         this.worakywe=param1.context;
         this.vuwir.debug("Context existence event caught. Configuring child context {0}",[this.worakywe]);
         this.worakywe.viqelo.waboka=this.qod;
         return;
      }
   }
[/CLASS]
}