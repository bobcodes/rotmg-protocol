package tisidon
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import nagyc.Jyt;


   public class Juv extends Sprite
   {
      public function Juv() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.tabChildren=false;
         this.jifajenuj();
         this.lobola();
         return;
      }

      private const bata:Number = 306;

      private const zik:Number = 194;

      private const wel:Number = 151;

      private const qygyz:Number = 189;

      private const fejyj:Number = 4;

      private const riro:Cowanynow = new Cowanynow(this.bata,this.zik);

      private const mugelel:Cowanynow = new Cowanynow(this.wel,this.qygyz);

      private const gajero:Cowanynow = new Cowanynow(this.wel,this.qygyz);

      private function jifajenuj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.riro);
         addChild(this.mugelel);
         addChild(this.gajero);
         return;
      }

      private function lobola() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mugelel.y=this.zik+this.fejyj;
         this.gajero.x=this.wel+this.fejyj;
         this.gajero.y=this.zik+this.fejyj;
         return;
      }

      function update(param1:Vector.<Jyt>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.riro.init(param1[0]);
         this.mugelel.init(param1[1]);
         this.gajero.init(param1[2]);
         this.riro.load();
         this.mugelel.load();
         this.gajero.load();
         return;
      }
   }

}