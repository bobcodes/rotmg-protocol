package pufelih
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import kutovezap.Voliwed;
   import qykifavol.Rulavowaz;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.util.Tiguziro;
   import cinapog.Tiqep;


   public class Guwesica extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Guwesica() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.close=new Qanyduk();
         this.select=new Voliwed(MouseEvent.CLICK,String);
         this.wutas();
         this.dozal();
         this.qunuluz();
         return;
      }

      public static var sagisu:Class = Hokyvaly;

      public var close:Qanyduk;

      public var select:Voliwed;

      public var vidasyw:Sprite;

      public var rydanyw:Sprite;

      public var google:Sprite;

      public function fop() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         x=(stage.stageWidth-width)*0.5;
         y=(stage.stageHeight-height)*0.5-5;
         return;
      }

      private function wutas() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(new sagisu());
         return;
      }

      private function dozal() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = this.dyke(550,30,30,30);
         this.close=new Rulavowaz(_loc1_,MouseEvent.CLICK);
         return;
      }

      private function qunuluz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vidasyw=this.dyke(220,180,180,35);
         this.rydanyw=this.dyke(220,224,180,35);
         this.google=this.dyke(220,268,180,35);
         this.select.map(this.vidasyw,Tiguziro.kywizi.label_);
         this.select.map(this.rydanyw,Tiguziro.kuqafogor.label_);
         this.select.map(this.google,Tiguziro.kudavoci.label_);
         return;
      }

      private function dyke(param1:int, param2:int, param3:int, param4:int) : Sprite {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Tiqep = new Tiqep(param1,param2,param3,param4);
         addChild(_loc5_);
         return _loc5_;
      }
   }

}