package ripu
{
   import vavufer.Bicowu;
   import dopumitud.Suquzujow;
   import gag.Gawu;
   import wegyluke.Hez;
   import raqu.Zer;
   import jiha.Jopu;
   import raqu.Sikywybu;
   import raqu.Pobu;
   import raqu.Wolugyty;
   import hotewa.Nowuved;
   import zokece.Zokyfymus;
   import gag.Poh;
   import gag.Cub;
   import gag.Myzawob;
   import mafu.WebAccountDetailDialog;
   import gag.Bysyg;
   import flash.display.Sprite;
   import com.company.assembleegameclient.game.GameSprite;
   import sakugyt.CharacterSelectionAndNewsScreen;
   import cidehov.Hyzifiraj;


   public class Vugedica extends Object
   {
      public function Vugedica() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var data:Bicowu;

      public var gynehe:Suquzujow;

      public var rurusedi:Gawu;

      public var naval:Hez;

      public var piv:Zer;

      public var tefipu:Jopu;

      public var tyc:Sikywybu;

      public var vowopuc:Pobu;

      public var bykiry:Wolugyty;

      public var tahymudy:Nowuved;

      public var jagociwu:Zokyfymus;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Poh = new Poh(this.gynehe,this.bysysa(),this.fupoky());
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function bysysa() : Cub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Cub = new Cub();
         _loc1_.add(new Myzawob(this.naval,new WebAccountDetailDialog()));
         _loc1_.add(new Myzawob(this.tyc,this.qawet()));
         _loc1_.add(new Myzawob(this.tefipu));
         _loc1_.add(new Myzawob(this.vowopuc));
         _loc1_.add(this.jagociwu);
         _loc1_.add(new Myzawob(this.bykiry,this.qydewogy()));
         return _loc1_;
      }

      private function fupoky() : Bysyg {
         return new Myzawob(this.piv,this.gynehe);
      }

      private function qydewogy() : Sprite {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Class = this.tahymudy.tutec();
         if(_loc1_==null||_loc1_==GameSprite)
         {
            _loc1_=CharacterSelectionAndNewsScreen;
         }
         return new _loc1_();
      }

      private function qawet() : Hyzifiraj {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Hyzifiraj = new Hyzifiraj();
         _loc1_.category="account";
         _loc1_.hiris="signedIn";
         return _loc1_;
      }
   }

}