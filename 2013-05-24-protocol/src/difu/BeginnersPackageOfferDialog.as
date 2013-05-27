package difu
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import movimet.Lufub;
   import nec.Sire;
   import gyzesuqu.Zojygese;
   import flash.events.MouseEvent;
   import wyjowaso.Rycunuv;


   public class BeginnersPackageOfferDialog extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function BeginnersPackageOfferDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.gehepu();
         this.riwanotuv();
         this.nagelywig();
         this.borev();
         return;
      }

      public static const vyta:String = "BeginnersPackageOfferDialog.dayLeft";

      public static const huwefumur:String = "BeginnersPackageOfferDialog.daysLeft";

      public static var feqira:Class = Tyqoqyt;

      public var close:Hugyqufyq;

      public var buy:Hugyqufyq;

      private var zyvahyj:Lufub;

      public function babu(param1:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = param1>1?huwefumur:vyta;
         this.zyvahyj.setStringBuilder(new Sire().setParams(_loc2_,{days:param1}));
         return;
      }

      public function dyhokopoq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         x=(stage.stageWidth-width)*0.5;
         y=(stage.stageHeight-height)*0.5;
         return;
      }

      private function gehepu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(new feqira());
         return;
      }

      private function riwanotuv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zyvahyj=new Lufub().setSize(14).setColor(14928128);
         this.zyvahyj.setBold(true);
         this.zyvahyj.x=307;
         this.zyvahyj.y=380;
         addChild(this.zyvahyj);
         return;
      }

      private function borev() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = this.gisofy(270,400,150,40);
         this.buy=new Zojygese(_loc1_,MouseEvent.CLICK);
         return;
      }

      private function nagelywig() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = this.gisofy(550,30,30,30);
         this.close=new Zojygese(_loc1_,MouseEvent.CLICK);
         return;
      }

      private function gisofy(param1:int, param2:int, param3:int, param4:int) : Sprite {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Rycunuv = new Rycunuv(param1,param2,param3,param4);
         addChild(_loc5_);
         return _loc5_;
      }
   }

}