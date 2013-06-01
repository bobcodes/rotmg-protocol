package gepa
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import nec.Sire;
   import ruwysepyd.Junefolef;
   import qucuqesif.Rasoqymi;


   public class Coruvasy extends Sprite
   {
      public function Coruvasy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.dolihaduj();
         this.qohinep();
         this.qynycufo("Text","Text");
         this.vivi();
         return;
      }

      private const moradasif:Lufub = Rasoqymi.tefyko(16777215,16,true);

      private const qon:Lufub = Rasoqymi.tefyko(16777215,16,true);

      private const WIDTH:uint = 238;

      private const HEIGHT:uint = 30;

      private const pyzifok:uint = 10;

      private const bulyheh:uint = 21;

      public function qynycufo(param1:String, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.moradasif.setStringBuilder(new Sire().setParams(param1));
         this.qon.setStringBuilder(new Sire().setParams(param2));
         return;
      }

      private function qohinep() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.moradasif);
         addChild(this.qon);
         return;
      }

      private function dolihaduj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         graphics.beginFill(10066329);
         graphics.drawRect(0,0,this.WIDTH,this.HEIGHT);
         return;
      }

      private function vivi() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Junefolef = new Junefolef();
         _loc1_.push(this.moradasif.textChanged);
         _loc1_.push(this.qon.textChanged);
         _loc1_.complete.addOnce(this.motiheh);
         return;
      }

      private function motiheh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.moradasif.x=this.pyzifok;
         this.moradasif.y=this.bulyheh;
         this.qon.x=this.WIDTH-this.pyzifok-this.qon.width;
         this.qon.y=this.bulyheh;
         return;
      }
   }

}