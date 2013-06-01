package timorypi
{
[CLASS143]   import tysenyzy.Zovisis;
   import kirofyny.Tiqimav;
   import jehivytu.Hyfezaf;
   import dage.Fakibis;
   import mywyvuryw.Kejubuveh;
   import flash.display.BitmapData;


   public class Vyr extends Zovisis
   {
      public function Vyr() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:ZombifyDialog;

      public var closeDialogs:Tiqimav;

      public var pyfozer:Hyfezaf;

      public var death:Fakibis;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.closed.addOnce(this.zykekulucy);
         return;
      }

      private function zykekulucy() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Kejubuveh = null;
         _loc1_=this.death.gituroq();
         var _loc2_:BitmapData = new BitmapData(this.view.stage.width,this.view.stage.height);
         _loc2_.draw(this.view.stage);
         _loc1_.background=_loc2_;
         this.closeDialogs.dispatch();
         this.pyfozer.dispatch(_loc1_);
         return;
      }
   }
[/CLASS]
}