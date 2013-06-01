package sygy
{
[CLASS686]   import kyhawibyc.Fapu;
   import vofepimy.Rucikezab;
   import syfuqycy.Totitig;
   import kirofyny.Hehuf;
   import dutes.Vyzynos;
   import rysuho.Zubusuge;
   import dutes.Rumevo;
   import dutes.Luzuqo;
   import dutes.Vow;
   import dylaqezo.Cupap;
   import zozimuk.Tukejyp;
   import syfuqycy.Nizus;
   import syfuqycy.Zutus;
   import syfuqycy.Rewytoquk;
   import zegacymo.WebAccountDetailDialog;
   import syfuqycy.Motumeq;
   import flash.display.Sprite;
   import com.company.assembleegameclient.game.GameSprite;
   import qilarag.CharacterSelectionAndNewsScreen;
   import jezi.Pyruleq;


   public class Fajarijuh extends Object
   {
      public function Fajarijuh() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var data:Fapu;

      public var getevyja:Rucikezab;

      public var peg:Totitig;

      public var lyhog:Hehuf;

      public var fasefesak:Vyzynos;

      public var venisehi:Zubusuge;

      public var pukyso:Rumevo;

      public var bejony:Luzuqo;

      public var wukulomik:Vow;

      public var qobose:Cupap;

      public var huwumepe:Tukejyp;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nizus = new Nizus(this.getevyja,this.tisehi(),this.jumyqake());
         this.peg.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function tisehi() : Zutus {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Zutus = new Zutus();
         _loc1_.add(new Rewytoquk(this.lyhog,new WebAccountDetailDialog()));
         _loc1_.add(new Rewytoquk(this.pukyso,this.jagegy()));
         _loc1_.add(new Rewytoquk(this.venisehi));
         _loc1_.add(new Rewytoquk(this.bejony));
         _loc1_.add(this.huwumepe);
         _loc1_.add(new Rewytoquk(this.wukulomik,this.dajiwery()));
         return _loc1_;
      }

      private function jumyqake() : Motumeq {
         return new Rewytoquk(this.fasefesak,this.getevyja);
      }

      private function dajiwery() : Sprite {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Class = this.qobose.qid();
         if(_loc1_==null||_loc1_==GameSprite)
         {
            _loc1_=CharacterSelectionAndNewsScreen;
         }
         return new _loc1_();
      }

      private function jagegy() : Pyruleq {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Pyruleq = new Pyruleq();
         _loc1_.category="account";
         _loc1_.bozegyt="signedIn";
         return _loc1_;
      }
   }
[/CLASS]
}