package wynuqehej
{
[CLASS298]   import warude.Panel;
   import parivyt.Tasofo;
   import zehus.Caje;
   import flash.display.Sprite;
   import qypupet.Vuravipyg;
   import tinava.Dab;
   import pudev.Capitu;
   import flash.display.Bitmap;
   import haqakel.Kefyfa;
   import kozaligov.Cinijyt;
   import totuhare.Zufi;
   import flash.events.MouseEvent;
   import fyvanod.Zyzevy;
   import com.company.assembleegameclient.game.Tosahafu;
   import pigeguwo.Jazyv;
   import kozaligov.Bapipe;


   public class PetPanel extends Panel
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function PetPanel(param1:Tosahafu, param2:Vuravipyg) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.kivy=new Sprite();
         super(param1);
         this.petVO=param2;
         this.vizyqoqepe=new Caje(this.kivy,MouseEvent.MOUSE_OVER);
         this.vizyqoqepe.add(this.kofus);
         this.dyvizi=param2.vobasyg();
         this.mipuguc();
         this.rabika();
         this.zawiqur();
         this.seb();
         return;
      }

      private static const heh:int = 16;

      private static const faco:int = 6;

      private static const tevyzali:int = 5;

      private static function buwysagef(param1:Tasofo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.y=HEIGHT-param1.height-4;
         return;
      }

      public var vizyqoqepe:Caje;

      public var kivy:Sprite;

      public var mosyq:Tasofo;

      public var byromu:Tasofo;

      public var zasu:Tasofo;

      public var petVO:Vuravipyg;

      public const nanopemek:Dab = new Dab(Jazyv);

      private const liny:Capitu = Bapipe.kejajaqyv(16777215,16,true);

      private const rovykopi:Capitu = Bapipe.kejajaqyv(11974326,12,false);

      private var dyvizi:Bitmap;

      private function seb() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mosyq=this.lulazipew(Kefyfa.pymakytej);
         this.byromu=this.lulazipew(Kefyfa.tahivo);
         this.zasu=this.lulazipew(Kefyfa.tysukes);
         this.doh();
         return;
      }

      private function lulazipew(param1:String) : Tasofo {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Tasofo = new Tasofo(heh,param1);
         addChild(_loc2_);
         return _loc2_;
      }

      public function setState(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nom(param1==Cinijyt.vityco);
         return;
      }

      public function nom(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mosyq.visible=param1;
         this.byromu.visible=param1;
         this.zasu.visible=!param1;
         return;
      }

      private function mipuguc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kivy.addChild(this.dyvizi);
         addChild(this.kivy);
         addChild(this.liny);
         addChild(this.rovykopi);
         return;
      }

      private function zawiqur() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.liny.setStringBuilder(new Zufi().setParams(this.petVO.getName()));
         this.rovykopi.setStringBuilder(new Zufi().setParams(this.petVO.nyv()));
         return;
      }

      private function rabika() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.dyvizi.x=4;
         this.dyvizi.y=-3;
         this.liny.x=58;
         this.liny.y=23;
         this.rovykopi.x=58;
         this.rovykopi.y=35;
         return;
      }

      private function doh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pehubew();
         this.nyzowo();
         this.mugod();
         return;
      }

      private function pehubew() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mosyq.x=faco;
         buwysagef(this.mosyq);
         return;
      }

      private function nyzowo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.byromu.x=WIDTH-this.byromu.width-faco-tevyzali;
         buwysagef(this.byromu);
         return;
      }

      private function mugod() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zasu.x=(WIDTH-this.zasu.width)/2;
         buwysagef(this.zasu);
         return;
      }

      private function kofus(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Zyzevy = new Zyzevy(this.petVO);
         _loc2_.quzefobaj(this);
         this.nanopemek.dispatch(_loc2_);
         return;
      }
   }
[/CLASS]
}