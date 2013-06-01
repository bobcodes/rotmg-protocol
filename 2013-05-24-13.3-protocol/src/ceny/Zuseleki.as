package ceny
{
   import qov.Kalefu;
   import pepyca.Fifu;
   import fuquqo.Peh;
   import fuquqo.Kunyma;
   import fuquqo.Rupo;
   import aaa.rotmg.config.GoogleAppConfig;
   import pepyca.Depagy;
   import aaa.rotmg.config.UserConfig;


   public class Zuseleki extends Kalefu
   {
      public function Zuseleki() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Zelyly;

      public var model:Fifu;

      public var zuqa:Peh;

      public var syvinun:Kunyma;

      public var fykimy:Rupo;

      public var qebofez:Pahu;

      public var setup:GoogleAppConfig;

      override public function initialize() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Depagy = null;
         this.view.setup(this.model);
         for each (_loc1_ in this.model.nycyd)
         {
            this.view.labykyhif(this.qebofez.make(_loc1_,true));
         }
         this.view.myre();
         this.zuqa.add(this.suvy);
         this.syvinun.add(this.kugob);
         this.fykimy.add(this.cikup);
         this.cikup(Depagy.make(UserConfig.pynezad,this.repis()));
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zuqa.remove(this.suvy);
         this.syvinun.remove(this.kugob);
         this.fykimy.remove(this.cikup);
         return;
      }

      private function suvy(param1:Boolean, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.view.y=this.model.cucivizyw.height-(param1?this.model.qocalopag:0);
         return;
      }

      private function kugob(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1>0)
         {
            this.view.fidypera();
         }
         else
         {
            if(param1<0)
            {
               this.view.gusula();
            }
         }
         return;
      }

      private function cikup(param1:Depagy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.labykyhif(this.qebofez.make(param1));
         this.view.myre();
         return;
      }

      private function repis() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = this.setup.getBuildDisplayLabel();
         _loc1_=_loc1_.replace(new RegExp("<font .+>(.+)<\\/font>","g"),"$1");
         return _loc1_;
      }
   }

}