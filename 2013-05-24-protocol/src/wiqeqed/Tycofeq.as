package wiqeqed
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import lijite.Nyzena;


   public class Tycofeq extends Sprite
   {
      public function Tycofeq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.tabChildren=false;
         this.qohinep();
         this.hezuc();
         return;
      }

      private const dafybez:Number = 306;

      private const nudosur:Number = 194;

      private const jos:Number = 151;

      private const rymikuv:Number = 189;

      private const sozyjoga:Number = 4;

      private const lonolu:Kitafer = new Kitafer(this.dafybez,this.nudosur);

      private const raq:Kitafer = new Kitafer(this.jos,this.rymikuv);

      private const binoja:Kitafer = new Kitafer(this.jos,this.rymikuv);

      private function qohinep() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.lonolu);
         addChild(this.raq);
         addChild(this.binoja);
         return;
      }

      private function hezuc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.raq.y=this.nudosur+this.sozyjoga;
         this.binoja.x=this.jos+this.sozyjoga;
         this.binoja.y=this.nudosur+this.sozyjoga;
         return;
      }

      function update(param1:Vector.<Nyzena>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lonolu.init(param1[0]);
         this.raq.init(param1[1]);
         this.binoja.init(param1[2]);
         this.lonolu.load();
         this.raq.load();
         this.binoja.load();
         return;
      }
   }

}