package pyw
{
   import qov.Kalefu;
   import wegyluke.Cowymute;
   import nyt.Weryliz;
   import zelinoryv.Vib;
   import quqe.Wupeb;
   import flash.display.BitmapData;


   public class Cis extends Kalefu
   {
      public function Cis() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:ZombifyDialog;

      public var closeDialogs:Cowymute;

      public var rypozobud:Weryliz;

      public var death:Vib;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.closed.addOnce(this.pomuwok);
         return;
      }

      private function pomuwok() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Wupeb = null;
         _loc1_=this.death.qajyzyn();
         var _loc2_:BitmapData = new BitmapData(this.view.stage.width,this.view.stage.height);
         _loc2_.draw(this.view.stage);
         _loc1_.background=_loc2_;
         this.closeDialogs.dispatch();
         this.rypozobud.dispatch(_loc1_);
         return;
      }
   }

}