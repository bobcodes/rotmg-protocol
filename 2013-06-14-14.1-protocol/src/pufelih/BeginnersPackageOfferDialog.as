package pufelih
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import hivysif.Guzowoja;
   import jediwip.Kybidu;
   import qykifavol.Rulavowaz;
   import flash.events.MouseEvent;
   import cinapog.Tiqep;


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
         this.wutas();
         this.qugowym();
         this.dozal();
         this.qeta();
         return;
      }

      public static const vakovawo:String = "BeginnersPackageOfferDialog.dayLeft";

      public static const caw:String = "BeginnersPackageOfferDialog.daysLeft";

      public static var jonuwur:Class = Dadepup;

      public var close:Qanyduk;

      public var buy:Qanyduk;

      private var wyjaza:Guzowoja;

      public function qekiju(param1:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = param1>1?caw:vakovawo;
         this.wyjaza.setStringBuilder(new Kybidu().setParams(_loc2_,{days:param1}));
         return;
      }

      public function fop() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         x=(stage.stageWidth-width)*0.5;
         y=(stage.stageHeight-height)*0.5;
         return;
      }

      private function wutas() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(new jonuwur());
         return;
      }

      private function qugowym() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wyjaza=new Guzowoja().setSize(14).setColor(14928128);
         this.wyjaza.setBold(true);
         this.wyjaza.x=307;
         this.wyjaza.y=380;
         addChild(this.wyjaza);
         return;
      }

      private function qeta() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = this.mar(270,400,150,40);
         this.buy=new Rulavowaz(_loc1_,MouseEvent.CLICK);
         return;
      }

      private function dozal() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = this.mar(550,30,30,30);
         this.close=new Rulavowaz(_loc1_,MouseEvent.CLICK);
         return;
      }

      private function mar(param1:int, param2:int, param3:int, param4:int) : Sprite {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Tiqep = new Tiqep(param1,param2,param3,param4);
         addChild(_loc5_);
         return _loc5_;
      }
   }

}