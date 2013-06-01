package qutobiv
{
[CLASS223]   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import gyqadewa.Jycomynig;


   public class Jinutyqi extends Sprite
   {
      public function Jinutyqi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.tabChildren=false;
         this.mipuguc();
         this.rabika();
         return;
      }

      private const mocop:Number = 306;

      private const fafoguwa:Number = 194;

      private const wymutam:Number = 151;

      private const matiwon:Number = 189;

      private const zygeviq:Number = 4;

      private const morecyr:Sibu = new Sibu(this.mocop,this.fafoguwa);

      private const wiha:Sibu = new Sibu(this.wymutam,this.matiwon);

      private const tugedaw:Sibu = new Sibu(this.wymutam,this.matiwon);

      private function mipuguc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.morecyr);
         addChild(this.wiha);
         addChild(this.tugedaw);
         return;
      }

      private function rabika() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wiha.y=this.fafoguwa+this.zygeviq;
         this.tugedaw.x=this.wymutam+this.zygeviq;
         this.tugedaw.y=this.fafoguwa+this.zygeviq;
         return;
      }

      function update(param1:Vector.<Jycomynig>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.morecyr.init(param1[0]);
         this.wiha.init(param1[1]);
         this.tugedaw.init(param1[2]);
         this.morecyr.load();
         this.wiha.load();
         this.tugedaw.load();
         return;
      }
   }
[/CLASS]
}