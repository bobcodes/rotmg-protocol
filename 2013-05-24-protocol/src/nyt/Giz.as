package nyt
{
   import quqe.Wupeb;
   import hotewa.Baqifa;
   import raqu.Sikywybu;
   import dopumitud.Wib;
   import vevurar.Kikewu;
   import gag.Gawu;
   import lazamipu.Radil;
   import lazamipu.Nomoquna;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import cidehov.Hyzifiraj;
   import aaa.rotmg.config.UserConfig;
   import gag.Cub;
   import gag.Myzawob;


   public class Giz extends Object
   {
      public function Giz() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var death:Wupeb;

      public var player:Baqifa;

      public var tyc:Sikywybu;

      public var zoritu:Wib;

      public var dem:Kikewu;

      public var rurusedi:Gawu;

      private var cizelo:Radil;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cizelo=new Nomoquna(this.death.accountId_,this.death.charId_);
         this.civa();
         this.wuwa();
         this.najo();
         return;
      }

      private function civa() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:SavedCharacter = this.player.joqy(this.death.charId_);
         var _loc2_:int = _loc1_?_loc1_.level():0;
         var _loc3_:Hyzifiraj = new Hyzifiraj();
         _loc3_.category="killedBy";
         _loc3_.hiris=this.death.killedBy_;
         _loc3_.value=_loc2_;
         this.tyc.dispatch(_loc3_);
         return;
      }

      private function wuwa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         UserConfig.data_.needsRandomRealm=false;
         UserConfig.save();
         return;
      }

      private function najo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.player.lyhiqumi()==-1)
         {
            this.fahagy();
         }
         else
         {
            this.dem.dispatch(this.cizelo);
         }
         return;
      }

      private function fahagy() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Cub = new Cub();
         _loc1_.add(this.zoritu);
         _loc1_.add(new Myzawob(this.dem,this.cizelo));
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }
   }

}