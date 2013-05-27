package buzok
{
   import vaqob.Panel;
   import vamydiqyw.Fywyvov;
   import gyzesuqu.Tybabukyr;
   import flash.display.Sprite;
   import zoroc.Bezuco;
   import tulunyno.Hugyqufyq;
   import movimet.Lufub;
   import flash.display.Bitmap;
   import aaa.rotmg.i18n.I18nKeys;
   import qucuqesif.Qemo;
   import nec.Sire;
   import flash.events.MouseEvent;
   import coh.Cum;
   import com.company.assembleegameclient.game.Nukomesih;
   import povopito.Ryduwi;
   import qucuqesif.Rasoqymi;


   public class PetPanel extends Panel
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function PetPanel(param1:Nukomesih, param2:Bezuco) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.qezyw=new Sprite();
         super(param1);
         this.petVO=param2;
         this.duzucyb=new Tybabukyr(this.qezyw,MouseEvent.MOUSE_OVER);
         this.duzucyb.add(this.duby);
         this.wum=param2.sek();
         this.qohinep();
         this.hezuc();
         this.ribipucow();
         this.pefijekem();
         return;
      }

      private static const lacasoka:int = 16;

      private static const lipizic:int = 6;

      private static const sereragog:int = 5;

      private static function gasuceji(param1:Fywyvov) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.y=HEIGHT-param1.height-4;
         return;
      }

      public var duzucyb:Tybabukyr;

      public var qezyw:Sprite;

      public var cydoky:Fywyvov;

      public var pib:Fywyvov;

      public var jelora:Fywyvov;

      public var petVO:Bezuco;

      public const cybat:Hugyqufyq = new Hugyqufyq(Ryduwi);

      private const vitevutaq:Lufub = Rasoqymi.tefyko(16777215,16,true);

      private const salydyv:Lufub = Rasoqymi.tefyko(11974326,12,false);

      private var wum:Bitmap;

      private function pefijekem() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cydoky=this.pykutud(I18nKeys.ciqyte);
         this.pib=this.pykutud(I18nKeys.qabysu);
         this.jelora=this.pykutud(I18nKeys.danyryk);
         this.bysora();
         return;
      }

      private function pykutud(param1:String) : Fywyvov {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Fywyvov = new Fywyvov(lacasoka,param1);
         addChild(_loc2_);
         return _loc2_;
      }

      public function setState(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jaguh(param1==Qemo.ticavomen);
         return;
      }

      public function jaguh(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cydoky.visible=param1;
         this.pib.visible=param1;
         this.jelora.visible=!param1;
         return;
      }

      private function qohinep() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qezyw.addChild(this.wum);
         addChild(this.qezyw);
         addChild(this.vitevutaq);
         addChild(this.salydyv);
         return;
      }

      private function ribipucow() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vitevutaq.setStringBuilder(new Sire().setParams(this.petVO.getName()));
         this.salydyv.setStringBuilder(new Sire().setParams(this.petVO.morezo()));
         return;
      }

      private function hezuc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wum.x=4;
         this.wum.y=-3;
         this.vitevutaq.x=58;
         this.vitevutaq.y=23;
         this.salydyv.x=58;
         this.salydyv.y=35;
         return;
      }

      private function bysora() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kopotu();
         this.vuvari();
         this.naresa();
         return;
      }

      private function kopotu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cydoky.x=lipizic;
         gasuceji(this.cydoky);
         return;
      }

      private function vuvari() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pib.x=WIDTH-this.pib.width-lipizic-sereragog;
         gasuceji(this.pib);
         return;
      }

      private function naresa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jelora.x=(WIDTH-this.jelora.width)/2;
         gasuceji(this.jelora);
         return;
      }

      private function duby(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Cum = new Cum(this.petVO);
         _loc2_.saqazuqebu(this);
         this.cybat.dispatch(_loc2_);
         return;
      }
   }

}