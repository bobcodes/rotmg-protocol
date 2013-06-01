package wociwa
{
[CLASS1313]   import kirofyny.Hehuf;
   import nupuq.Jegetobe;
   import dylaqezo.Vusun;
   import tehakab.Supuvygac;
   import fumyl.Beci;
   import qycopu.ReskinCharacterView;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;
   import tehakab.Pytowiwow;


   public class Qukyjywo extends Object
   {
      public function Qukyjywo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var lyhog:Hehuf;

      public var qega:Jegetobe;

      public var player:Vusun;

      public var model:Supuvygac;

      public var factory:Beci;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qega.dispatch();
         this.lyhog.dispatch(this.qic());
         return;
      }

      private function qic() : ReskinCharacterView {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:ReskinCharacterView = new ReskinCharacterView();
         _loc1_.faketafyn(this.vosejyqa());
         _loc1_.x=(800-_loc1_.width)*0.5;
         _loc1_.y=(600-_loc1_.qunilojag)*0.5;
         return _loc1_;
      }

      private function vosejyqa() : Vector.<DisplayObject> {
         var _loc1_:Pytowiwow = this.vedawumok();
         return this.factory.make(_loc1_);
      }

      private function vedawumok() : Pytowiwow {
         return this.model.docew().pikyremo;
      }
   }
[/CLASS]
}