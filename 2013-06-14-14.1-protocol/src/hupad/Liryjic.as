package hupad
{
   import tytojonib.Kyjefe;
   import cizagamym.Lebovas;
   import lytu.Woriqucak;
   import tygole.Govututa;
   import wipivyv.Memysoh;
   import flash.display.BitmapData;


   public class Liryjic extends Kyjefe
   {
      public function Liryjic() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:ZombifyDialog;

      public var closeDialogs:Lebovas;

      public var lihirosu:Woriqucak;

      public var death:Govututa;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.closed.addOnce(this.nydegazeq);
         return;
      }

      private function nydegazeq() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Memysoh = null;
         _loc1_=this.death.vocafeq();
         var _loc2_:BitmapData = new BitmapData(this.view.stage.width,this.view.stage.height);
         _loc2_.draw(this.view.stage);
         _loc1_.background=_loc2_;
         this.closeDialogs.dispatch();
         this.lihirosu.dispatch(_loc1_);
         return;
      }
   }

}