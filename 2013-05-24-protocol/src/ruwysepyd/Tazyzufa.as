package ruwysepyd
{
   import qov.Kalefu;
   import sakugyt.CharacterSelectionAndNewsScreen;
   import hotewa.Baqifa;
   import raqu.Sikywybu;
   import raqu.Calogu;
   import zubamyki.Qaf;
   import sasacen.Lafani;
   import sasacen.Mygotuwo;
   import raqu.Fesezosit;
   import kynusa.Rejy;
   import kynusa.Lywazawes;
   import kynusa.Raduhu;
   import kagijawil.Cibiqot;
   import cidehov.Hyzifiraj;
   import com.company.util.Hadi;
   import aaa.rotmg.config.UserConfig;
   import sakugyt.Cekocozah;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import cuwyg.Tibeto;


   public class Tazyzufa extends Kalefu
   {
      public function Tazyzufa() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:CharacterSelectionAndNewsScreen;

      public var muwi:Baqifa;

      public var tyc:Sikywybu;

      public var zogytuso:Calogu;

      public var luribodi:Qaf;

      public var chooseName:Lafani;

      public var ryqo:Mygotuwo;

      public var qery:Fesezosit;

      public var qohimove:Rejy;

      public var jupa:Lywazawes;

      public var jid:Raduhu;

      public var puleqefi:Cibiqot;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jukesu();
         this.view.initialize(this.muwi);
         this.view.close.add(this.onClose);
         this.view.newCharacter.add(this.fydisul);
         this.view.nud.add(this.fydisul);
         this.view.chooseName.add(this.safekuq);
         this.view.luribodi.add(this.rakyfiq);
         this.qery.dispatch("/currentCharScreen");
         this.ryqo.add(this.poc);
         this.jupa.add(this.jimo);
         this.jid.add(this.zahi);
         this.qohimove.dispatch();
         return;
      }

      private function zahi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.lucypufah();
         return;
      }

      private function jimo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.pyqe();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ryqo.remove(this.poc);
         this.jupa.remove(this.jimo);
         this.view.close.remove(this.onClose);
         this.view.newCharacter.remove(this.fydisul);
         this.view.chooseName.remove(this.safekuq);
         this.view.nud.remove(this.fydisul);
         this.view.luribodi.remove(this.rakyfiq);
         return;
      }

      private function poc(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.setName(param1);
         return;
      }

      private function jukesu() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Hyzifiraj = null;
         var _loc1_:String = Hadi.zac();
         if(UserConfig.data_.lastDailyAnalytics!=_loc1_)
         {
            _loc2_=new Hyzifiraj();
            _loc2_.category="joinDate";
            _loc2_.hiris=UserConfig.data_.joinDate;
            this.tyc.dispatch(_loc2_);
            UserConfig.data_.lastDailyAnalytics=_loc1_;
            UserConfig.save();
         }
         return;
      }

      private function fydisul() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zogytuso.dispatch(new Cekocozah());
         return;
      }

      private function onClose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zogytuso.dispatch(new TitleView());
         return;
      }

      private function safekuq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.chooseName.dispatch();
         return;
      }

      private function rakyfiq() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:SavedCharacter = this.muwi.kodytosu(0);
         this.muwi.charId=_loc1_.charId();
         var _loc2_:Hyzifiraj = new Hyzifiraj();
         _loc2_.category="character";
         _loc2_.hiris="select";
         _loc2_.label=_loc1_.lacop();
         _loc2_.value=_loc1_.level();
         this.tyc.dispatch(_loc2_);
         var _loc3_:Tibeto = new Tibeto();
         _loc3_.needsToCreateNewChar=false;
         _loc3_.charId=_loc1_.charId();
         _loc3_.myto=true;
         this.luribodi.dispatch(_loc3_);
         return;
      }
   }

}