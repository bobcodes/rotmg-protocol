package fyvanod
{
[CLASS274]   import flash.display.Sprite;
   import tinava.Dab;
   import pudev.Capitu;
   import tinava.Wusozuve;
   import qypupet.Zazeseca;
   import flash.events.MouseEvent;
   import kozaligov.Bapipe;
   import kozaligov.Cinijyt;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import tidi.Dak;
   import pigeguwo.Jazyv;
   import zehus.Caje;


   public class Qyt extends Sprite
   {
      public function Qyt(param1:Zazeseca, param2:int) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.wakutehe=param1;
         this.kaqavi=param2;
         this.huzedosu=new Caje(this,MouseEvent.MOUSE_OVER).add(this.kofus);
         this.textColor=param1.hem()?11776947:6710886;
         this.zawiqur();
         this.naqedihom();
         param1.magoraqo.add(this.nygowev);
         return;
      }

      public const nanopemek:Dab = new Dab(Jazyv);

      public var fomysoluk:Capitu;

      private var huzedosu:Wusozuve;

      private var jobahyle:Capitu;

      private var wakutehe:Zazeseca;

      private var kaqavi:int;

      private var textColor:int;

      private var tooltip:Towoq;

      public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wakutehe.magoraqo.remove(this.nygowev);
         return;
      }

      private function nygowev(param1:Zazeseca) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bofeku();
         return;
      }

      private function kofus(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tooltip=new Towoq(this.wakutehe);
         this.tooltip.quzefobaj(this);
         this.nanopemek.dispatch(this.tooltip);
         return;
      }

      private function naqedihom() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         graphics.beginFill(this.textColor);
         graphics.drawCircle(0,-5,1.5);
         return;
      }

      private function zawiqur() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.beg();
         if(this.wakutehe.hem())
         {
            this.hecavi();
         }
         return;
      }

      private function hecavi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fomysoluk=Bapipe.kejajaqyv(this.textColor,13,true);
         addChild(this.fomysoluk);
         this.tozibyt();
         this.bofeku();
         return;
      }

      private function bofeku() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.fomysoluk)
         {
            this.fomysoluk.setStringBuilder(new Zufi().setParams(this.ducovu(this.wakutehe),{level:this.wakutehe.level}));
         }
         return;
      }

      private function beg() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jobahyle=Bapipe.kejajaqyv(this.textColor,13,true);
         this.jobahyle.setStringBuilder(new Zufi().setParams(this.wakutehe.name));
         this.jobahyle.x=3;
         addChild(this.jobahyle);
         return;
      }

      private function ducovu(param1:Zazeseca) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1.level<Cinijyt.tafanyn?Kefyfa.sojujofy:Kefyfa.saqaca;
      }

      private function tozibyt() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Dak = new Dak();
         _loc1_.push(this.fomysoluk.textChanged);
         _loc1_.complete.addOnce(this.fiqapek);
         return;
      }

      private function fiqapek() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fomysoluk.x=this.kaqavi-this.fomysoluk.width;
         return;
      }
   }
[/CLASS]
}