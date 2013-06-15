package sanu
{
   import cinyj.Vobewabij;
   import vilova.Baf;
   import gycu.Feliro;
   import cizagamym.Boquzojul;
   import pomujukir.Doli;
   import civino.Posobew;
   import pomujukir.Cuqoseze;
   import pomujukir.Wizuwub;
   import pomujukir.Kovi;
   import lemugo.Zifi;
   import car.Pijiz;
   import gycu.Befa;
   import gycu.Begotyl;
   import gycu.Levoje;
   import gabufo.WebAccountDetailDialog;
   import gycu.Cyqe;
   import flash.display.Sprite;
   import com.company.assembleegameclient.game.GameSprite;
   import waryp.CharacterSelectionAndNewsScreen;
   import suzen.Kodufanin;


   public class Woduqybyh extends Object
   {
      public function Woduqybyh() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var data:Vobewabij;

      public var qizukid:Baf;

      public var bilizaw:Feliro;

      public var ridecy:Boquzojul;

      public var wywyqicut:Doli;

      public var qybu:Posobew;

      public var taja:Cuqoseze;

      public var luzej:Wizuwub;

      public var hus:Kovi;

      public var wenuzehed:Zifi;

      public var sodoqif:Pijiz;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Befa = new Befa(this.qizukid,this.heladu(),this.jaminedezu());
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function heladu() : Begotyl {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Begotyl = new Begotyl();
         _loc1_.add(new Levoje(this.ridecy,new WebAccountDetailDialog()));
         _loc1_.add(new Levoje(this.taja,this.wih()));
         _loc1_.add(new Levoje(this.qybu));
         _loc1_.add(new Levoje(this.luzej));
         _loc1_.add(this.sodoqif);
         _loc1_.add(new Levoje(this.hus,this.tydowasu()));
         return _loc1_;
      }

      private function jaminedezu() : Cyqe {
         return new Levoje(this.wywyqicut,this.qizukid);
      }

      private function tydowasu() : Sprite {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Class = this.wenuzehed.ryginaqez();
         if(_loc1_==null||_loc1_==GameSprite)
         {
            _loc1_=CharacterSelectionAndNewsScreen;
         }
         return new _loc1_();
      }

      private function wih() : Kodufanin {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Kodufanin = new Kodufanin();
         _loc1_.category="account";
         _loc1_.hukepej="signedIn";
         return _loc1_;
      }
   }

}