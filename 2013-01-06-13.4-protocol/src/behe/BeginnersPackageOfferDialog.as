package behe
{
[CLASS331]   import flash.display.Sprite;
   import tinava.Dab;
   import pudev.Capitu;
   import totuhare.Zufi;
   import zehus.Kelapu;
   import flash.events.MouseEvent;
   import sisatapu.Fujopedid;


   public class BeginnersPackageOfferDialog extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function BeginnersPackageOfferDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.fawug();
         this.hykenujo();
         this.rafyte();
         this.duvih();
         return;
      }

      public static const wefyhaqa:String = "BeginnersPackageOfferDialog.dayLeft";

      public static const dyqakozy:String = "BeginnersPackageOfferDialog.daysLeft";

      public static var bybyqo:Class = Hocypi;

      public var close:Dab;

      public var buy:Dab;

      private var nanuwyry:Capitu;

      public function gizozekuc(param1:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = param1>1?dyqakozy:wefyhaqa;
         this.nanuwyry.setStringBuilder(new Zufi().setParams(_loc2_,{days:param1}));
         return;
      }

      public function vygusew() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         x=(stage.stageWidth-width)*0.5;
         y=(stage.stageHeight-height)*0.5;
         return;
      }

      private function fawug() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(new bybyqo());
         return;
      }

      private function hykenujo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nanuwyry=new Capitu().setSize(14).setColor(14928128);
         this.nanuwyry.setBold(true);
         this.nanuwyry.x=307;
         this.nanuwyry.y=380;
         addChild(this.nanuwyry);
         return;
      }

      private function duvih() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = this.roceroce(270,400,150,40);
         this.buy=new Kelapu(_loc1_,MouseEvent.CLICK);
         return;
      }

      private function rafyte() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = this.roceroce(550,30,30,30);
         this.close=new Kelapu(_loc1_,MouseEvent.CLICK);
         return;
      }

      private function roceroce(param1:int, param2:int, param3:int, param4:int) : Sprite {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Fujopedid = new Fujopedid(param1,param2,param3,param4);
         addChild(_loc5_);
         return _loc5_;
      }
   }
[/CLASS]
}