package vuwit
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import jediwip.Kybidu;
   import wenono.Nuri;
   import fypeba.Zikorur;


   public class Wuva extends Sprite
   {
      public function Wuva() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.vobocuwok();
         this.jifajenuj();
         this.pepase("Text","Text");
         this.meruvi();
         return;
      }

      private const honusemeq:Guzowoja = Zikorur.guta(16777215,16,true);

      private const hyfatut:Guzowoja = Zikorur.guta(16777215,16,true);

      private const WIDTH:uint = 238;

      private const HEIGHT:uint = 30;

      private const pybywy:uint = 10;

      private const hyjuneno:uint = 21;

      public function pepase(param1:String, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.honusemeq.setStringBuilder(new Kybidu().setParams(param1));
         this.hyfatut.setStringBuilder(new Kybidu().setParams(param2));
         return;
      }

      private function jifajenuj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.honusemeq);
         addChild(this.hyfatut);
         return;
      }

      private function vobocuwok() : void {
         var [OFS3]_loc1_:* = [/OFS]false;
         var [OFS4]_loc2_:* = [/OFS]true;
         [OFS7]graphics[/OFS].[OFS12]beginFill[/OFS][OFS12]([/OFS][OFS9]10066329[/OFS][OFS12])[/OFS];
         [OFS16]graphics[/OFS].[OFS29]drawRect[/OFS][OFS29]([/OFS][OFS18]0[/OFS][OFS29],[/OFS][OFS18]0[/OFS][OFS29],[/OFS]this.[OFS22]WIDTH[/OFS][OFS29],[/OFS]this.[OFS26]HEIGHT[/OFS][OFS29])[/OFS];
         [OFS33]return[/OFS];
      }

      private function meruvi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Nuri = new Nuri();
         _loc1_.push(this.honusemeq.textChanged);
         _loc1_.push(this.hyfatut.textChanged);
         _loc1_.complete.addOnce(this.digavyj);
         return;
      }

      private function digavyj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.honusemeq.x=this.pybywy;
         this.honusemeq.y=this.hyjuneno;
         this.hyfatut.x=this.WIDTH-this.pybywy-this.hyfatut.width;
         this.hyfatut.y=this.hyjuneno;
         return;
      }
   }

}