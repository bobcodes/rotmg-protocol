package leselo
{
[CLASS66]   import vofepimy.Lilatopi;
   import syfuqycy.Totitig;
   import dutes.Sycanetal;
   import kirofyny.Hehuf;
   import kirofyny.Tiqimav;
   import dylaqezo.Vusun;
   import dutes.Rumevo;
   import tidi.CharacterSlotNeedGoldDialog;
   import sojul.BuyingDialog;
   import syfuqycy.Zutus;
   import syfuqycy.Nizus;
   import syfuqycy.Rewytoquk;
   import syfuqycy.Motumeq;
   import qilarag.CharacterSelectionAndNewsScreen;
   import jezi.Pyruleq;
   import cejyva.ErrorDialog;


   public class Tem extends Object
   {
      public function Tem() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var price:int;

      public var pitegum:Lilatopi;

      public var peg:Totitig;

      public var cucec:Sycanetal;

      public var lyhog:Hehuf;

      public var madeve:Tiqimav;

      public var model:Vusun;

      public var account:Account;

      public var pukyso:Rumevo;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.wysywawap())
         {
            this.bokowid();
         }
         else
         {
            this.wepocosej();
         }
         return;
      }

      private function wysywawap() : Boolean {
         return this.model.gagesuno()<this.model.joze();
      }

      private function bokowid() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lyhog.dispatch(new CharacterSlotNeedGoldDialog());
         return;
      }

      private function wepocosej() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lyhog.dispatch(new BuyingDialog());
         var _loc1_:Zutus = new Zutus();
         _loc1_.add(new Nizus(this.pitegum,this.tisehi(),this.jumyqake()));
         _loc1_.add(new Rewytoquk(this.madeve));
         this.peg.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function tisehi() : Motumeq {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Zutus = new Zutus();
         _loc1_.add(new Rewytoquk(this.cucec,new CharacterSelectionAndNewsScreen()));
         _loc1_.add(new Rewytoquk(this.pukyso,this.qazewaf()));
         return _loc1_;
      }

      private function qazewaf() : Pyruleq {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Pyruleq = new Pyruleq();
         _loc1_.category="credits";
         _loc1_.bozegyt="buyConverted";
         _loc1_.label="Character Slot";
         _loc1_.value=this.price;
         return _loc1_;
      }

      private function jumyqake() : Motumeq {
         return new Rewytoquk(this.lyhog,new ErrorDialog("Unable to complete character slot purchase"));
      }
   }
[/CLASS]
}