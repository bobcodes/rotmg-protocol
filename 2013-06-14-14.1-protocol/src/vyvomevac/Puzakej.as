package vyvomevac
{
   import flash.display.Sprite;
   import haj.Sevuvomyn;
   import dyca.Mes;
   import flash.display.DisplayObject;
   import fanij.Cun;


   public class Puzakej extends Sprite
   {
      public function Puzakej() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var resemuci:Sevuvomyn;

      public var difas:Mes;

      public var wedudini:Wofotof;

      public var juhonos:Wofotof;

      public var dul:DisplayObject;

      private var petVO:Cun;

      public function dovasadib(param1:Cun) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.resemuci.dajuhok=8;
         this.petVO=param1;
         this.juhonos=this.zovobufas();
         this.wedudini=this.zovobufas();
         this.losevuz(param1);
         this.denyz();
         return;
      }

      public function vahunufi() : Cun {
         return this.petVO;
      }

      private function losevuz(param1:Cun) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dul=this.resemuci.create(param1,120);
         this.dul.x=-1*this.dul.width/2;
         this.dul.y=-1*this.dul.height/2;
         addChild(this.dul);
         return;
      }

      private function denyz() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.juhonos.lutufada=50;
         this.wedudini.lutufada=this.juhonos.lutufada*1.5;
         var _loc1_:Number = 0.7;
         this.wedudini.width=this.juhonos.width*_loc1_;
         this.wedudini.height=this.juhonos.height*_loc1_;
         this.wedudini.alpha=this.juhonos.alpha=0.7;
         return;
      }

      private function zovobufas() : Wofotof {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Wofotof = this.difas.getInstance(Wofotof);
         addChild(_loc1_);
         return _loc1_;
      }
   }

}