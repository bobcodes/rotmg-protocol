package timorypi
{
[CLASS430]   import tysenyzy.Zovisis;
   import dage.Fakibis;
   import dylaqezo.Vusun;
   import tusidywuq.Nan;
   import kirofyny.Hehuf;
   import kirofyny.Tiqimav;
   import flash.display.Sprite;
   import guvakipe.Nedasefyg;


   public class Qigy extends Zovisis
   {
      public function Qigy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var death:Fakibis;

      public var view:ResurrectionView;

      public var jojun:Vusun;

      public var gatav:Nan;

      public var lyhog:Hehuf;

      public var closeDialogs:Tiqimav;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.closed.add(this.zykekulucy);
         this.view.vuna.add(this.hugyroce);
         this.view.init(this.death.gituroq().background);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.vuna.remove(this.hugyroce);
         this.view.closed.remove(this.zykekulucy);
         return;
      }

      private function hugyroce(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lyhog.dispatch(param1);
         return;
      }

      private function zykekulucy() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.closeDialogs.dispatch();
         var _loc1_:Nedasefyg = new Nedasefyg();
         _loc1_.buny=false;
         _loc1_.charId=this.jojun.zud;
         _loc1_.zyhafovyd=true;
         this.gatav.dispatch(_loc1_);
         return;
      }
   }
[/CLASS]
}