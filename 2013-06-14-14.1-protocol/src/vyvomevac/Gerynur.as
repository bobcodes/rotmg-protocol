package vyvomevac
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import fylu.Byvo;
   import fylu.Zikimar;
   import fylu.Hizokivok;


   public class Gerynur extends Sprite
   {
      public function Gerynur() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(Byvo.wutas());
         this.qes=new Zikimar(this);
         this.pyq=new Hizokivok(this);
         alpha=0;
         return;
      }

      public const gacow:Qanyduk = new Qanyduk();

      public var qes:Wiz;

      public var pyq:Wiz;

      public function play() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qes.zuriwityk(this.winel);
         this.qes.start();
         return;
      }

      private function winel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gacow.dispatch();
         this.pyq.start();
         return;
      }
   }

}