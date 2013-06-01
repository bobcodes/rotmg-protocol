package zitofoty
{
[CLASS349]   import dylaqezo.Vusun;
   import dutes.Sycanetal;
   import flash.display.Sprite;
   import syfuqycy.Totitig;
   import vofepimy.Wylot;
   import qilarag.Nenovudym;
   import syfuqycy.Zutus;
   import syfuqycy.Rewytoquk;


   public class Mowif extends Object
   {
      public function Mowif() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var model:Vusun;

      public var cucec:Sycanetal;

      public var view:Sprite;

      public var peg:Totitig;

      public var pitegum:Wylot;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.model.toqo)
         {
            this.hekulizoz();
         }
         else
         {
            this.cucec.dispatch(this.view);
         }
         return;
      }

      private function hekulizoz() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cucec.dispatch(new Nenovudym());
         var _loc1_:Zutus = new Zutus();
         _loc1_.add(this.pitegum);
         _loc1_.add(new Rewytoquk(this.cucec,this.view));
         this.peg.add(_loc1_);
         _loc1_.start();
         return;
      }
   }
[/CLASS]
}