package zuly
{
[CLASS1008]   import bikyvym.Voduzak;
   import pogefeqeh.Wahovy;
   import suzu.Naneciry;
   import bikyvym.Cedymynet;
   import flash.display.DisplayObjectContainer;
   import korer.Bijut;
   import fomykuq.Sedubali;


   public class Sasimet extends Object
   {
      public function Sasimet(param1:Cedymynet, param2:Naneciry) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.vuwir=param1.diruboli(this);
         this.qod=param1.viqelo;
         this.qohuwen=param2;
         param1.sutu.hypyry(this.destroy);
         this.init();
         return;
      }

      private const pubutahic:String = Sedubali.create(Sasimet);

      private var vuwir:Voduzak;

      private var qod:Wahovy;

      private var qohuwen:Naneciry;

      private var worakywe:Cedymynet;

      public function toString() : String {
         return this.pubutahic;
      }

      private function init() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:DisplayObjectContainer = null;
         for each (_loc1_ in this.qohuwen.licivy)
         {
            this.vuwir.debug("Adding context existence event listener to container {0}",[_loc1_]);
            _loc1_.addEventListener(ModularContextEvent.tugy,this.getarun);
         }
         this.qohuwen.addEventListener(Bijut.wowow,this.qys);
         this.qohuwen.addEventListener(Bijut.mynyhyqo,this.syky);
         return;
      }

      private function destroy() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:DisplayObjectContainer = null;
         for each (_loc1_ in this.qohuwen.licivy)
         {
            this.vuwir.debug("Removing context existence event listener from container {0}",[_loc1_]);
            _loc1_.removeEventListener(ModularContextEvent.tugy,this.getarun);
         }
         this.qohuwen.removeEventListener(Bijut.wowow,this.qys);
         this.qohuwen.removeEventListener(Bijut.mynyhyqo,this.syky);
         if(this.worakywe)
         {
            this.vuwir.debug("Unlinking parent injector for child context {0}",[this.worakywe]);
            this.worakywe.viqelo.waboka=null;
         }
         return;
      }

      private function qys(param1:Bijut) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vuwir.debug("Adding context existence event listener to container {0}",[param1.container]);
         param1.container.addEventListener(ModularContextEvent.tugy,this.getarun);
         return;
      }

      private function syky(param1:Bijut) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vuwir.debug("Removing context existence event listener from container {0}",[param1.container]);
         param1.container.removeEventListener(ModularContextEvent.tugy,this.getarun);
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