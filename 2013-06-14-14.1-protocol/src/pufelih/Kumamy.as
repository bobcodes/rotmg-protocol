package pufelih
{
   import tilo.Lewe;
   import mukyrosu.Qanyduk;
   import hivysif.Guzowoja;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.filters.DropShadowFilter;
   import jediwip.Vofezuzy;
   import zutudytod.Burijedot;
   import qykifavol.Rulavowaz;
   import flash.events.MouseEvent;


   public class Kumamy extends Lewe
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Kumamy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.gud=Burijedot.josymype();
         this.peqe=new Rulavowaz(this,MouseEvent.CLICK);
         tabChildren=false;
         tabEnabled=false;
         this.quguhadi();
         return;
      }

      private static const voquhubi:int = 16;

      public var peqe:Qanyduk;

      private var paz:Guzowoja;

      private var nesewyha:DisplayObject;

      private var minalosuq:int = -1;

      private var gud:Sprite;

      public function pequdypi(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.minalosuq!=param1)
         {
            this.minalosuq=param1;
            this.wuvuqevyz();
         }
         return;
      }

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         parent.removeChild(this);
         return;
      }

      private function quguhadi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.gud);
         this.nesewyha=makeIcon();
         addChild(this.nesewyha);
         this.jacoju();
         this.pequdypi(0);
         return;
      }

      private function jacoju() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.paz=new Guzowoja().setSize(voquhubi).setColor(16777215);
         this.paz.filters=[new DropShadowFilter(0,0,0)];
         this.wuvuqevyz();
         addChild(this.paz);
         return;
      }

      private function wuvuqevyz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.paz.textChanged.addOnce(this.onTextChanged);
         this.paz.setStringBuilder(new Vofezuzy(this.minalosuq.toString()+" day"+(this.minalosuq>1?"s":"")));
         return;
      }

      private function onTextChanged() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         positionText(this.nesewyha,this.paz);
         return;
      }
   }

}