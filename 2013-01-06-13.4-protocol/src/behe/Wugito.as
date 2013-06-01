package behe
{
[CLASS336]   import flash.display.Sprite;
   import tinava.Dab;
   import paciseten.Sag;
   import zehus.Kelapu;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.util.Ruzizi;
   import sisatapu.Fujopedid;


   public class Wugito extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wugito() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.close=new Dab();
         this.select=new Sag(MouseEvent.CLICK,String);
         this.fawug();
         this.rafyte();
         this.wumyzyv();
         return;
      }

      public static var tyfihisas:Class = Sorudolu;

      public var close:Dab;

      public var select:Sag;

      public var kujidu:Sprite;

      public var mumycy:Sprite;

      public var google:Sprite;

      public function vygusew() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         x=(stage.stageWidth-width)*0.5;
         y=(stage.stageHeight-height)*0.5-5;
         return;
      }

      private function fawug() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(new tyfihisas());
         return;
      }

      private function rafyte() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = this.byneqoha(550,30,30,30);
         this.close=new Kelapu(_loc1_,MouseEvent.CLICK);
         return;
      }

      private function wumyzyv() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kujidu=this.byneqoha(220,180,180,35);
         this.mumycy=this.byneqoha(220,224,180,35);
         this.google=this.byneqoha(220,268,180,35);
         this.select.map(this.kujidu,Ruzizi.kary.label_);
         this.select.map(this.mumycy,Ruzizi.pozefo.label_);
         this.select.map(this.google,Ruzizi.duho.label_);
         return;
      }

      private function byneqoha(param1:int, param2:int, param3:int, param4:int) : Sprite {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Fujopedid = new Fujopedid(param1,param2,param3,param4);
         addChild(_loc5_);
         return _loc5_;
      }
   }
[/CLASS]
}