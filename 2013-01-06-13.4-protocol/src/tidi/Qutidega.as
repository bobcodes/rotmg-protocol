package tidi
{
[CLASS421]   import tysenyzy.Zovisis;
   import qilarag.CharacterSelectionAndNewsScreen;
   import dylaqezo.Vusun;
   import dutes.Rumevo;
   import dutes.Sycanetal;
   import tusidywuq.Nan;
   import nylos.Lutytaq;
   import nylos.Tifada;
   import dutes.Vavaq;
   import ruf.Zur;
   import ruf.Habihej;
   import ruf.Hoqilo;
   import jet.Varusici;
   import jezi.Pyruleq;
   import com.company.util.Runahivuw;
   import com.company.assembleegameclient.parameters.Parameters;
   import qilarag.Gufaw;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import guvakipe.Nedasefyg;


   public class Qutidega extends Zovisis
   {
      public function Qutidega() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:CharacterSelectionAndNewsScreen;

      public var jojun:Vusun;

      public var pukyso:Rumevo;

      public var cucec:Sycanetal;

      public var gatav:Nan;

      public var chooseName:Lutytaq;

      public var mecanalos:Tifada;

      public var bavyzov:Vavaq;

      public var hiden:Zur;

      public var dedal:Habihej;

      public var gufazyv:Hoqilo;

      public var rusobym:Varusici;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zocygogi();
         this.view.initialize(this.jojun);
         this.view.close.add(this.pikymasa);
         this.view.newCharacter.add(this.dybap);
         this.view.jeqabe.add(this.dybap);
         this.view.chooseName.add(this.tugugubiv);
         this.view.gatav.add(this.majeco);
         this.bavyzov.dispatch("/currentCharScreen");
         this.mecanalos.add(this.kabe);
         this.dedal.add(this.jufu);
         this.gufazyv.add(this.zita);
         this.hiden.dispatch();
         return;
      }

      private function zita() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.byt();
         return;
      }

      private function jufu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.rozup();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mecanalos.remove(this.kabe);
         this.dedal.remove(this.jufu);
         this.view.close.remove(this.pikymasa);
         this.view.newCharacter.remove(this.dybap);
         this.view.chooseName.remove(this.tugugubiv);
         this.view.jeqabe.remove(this.dybap);
         this.view.gatav.remove(this.majeco);
         return;
      }

      private function kabe(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.setName(param1);
         return;
      }

      private function zocygogi() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Pyruleq = null;
         var _loc1_:String = Runahivuw.zilip();
         if(Parameters.data_.lastDailyAnalytics!=_loc1_)
         {
            _loc2_=new Pyruleq();
            _loc2_.category="joinDate";
            _loc2_.bozegyt=Parameters.data_.joinDate;
            this.pukyso.dispatch(_loc2_);
            Parameters.data_.lastDailyAnalytics=_loc1_;
            Parameters.save();
         }
         return;
      }

      private function dybap() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cucec.dispatch(new Gufaw());
         return;
      }

      private function pikymasa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cucec.dispatch(new TitleView());
         return;
      }

      private function tugugubiv() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.chooseName.dispatch();
         return;
      }

      private function majeco() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:SavedCharacter = this.jojun.raherev(0);
         this.jojun.zud=_loc1_.charId();
         var _loc2_:Pyruleq = new Pyruleq();
         _loc2_.category="character";
         _loc2_.bozegyt="select";
         _loc2_.label=_loc1_.tafetes();
         _loc2_.value=_loc1_.level();
         this.pukyso.dispatch(_loc2_);
         var _loc3_:Nedasefyg = new Nedasefyg();
         _loc3_.buny=false;
         _loc3_.charId=_loc1_.charId();
         _loc3_.zyhafovyd=true;
         this.gatav.dispatch(_loc3_);
         return;
      }
   }
[/CLASS]
}