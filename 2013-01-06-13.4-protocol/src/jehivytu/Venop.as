package jehivytu
{
[CLASS149]   import mywyvuryw.Kejubuveh;
   import dylaqezo.Vusun;
   import dutes.Rumevo;
   import vofepimy.Wylot;
   import foliverad.Popefy;
   import syfuqycy.Totitig;
   import hiraj.Jygalikij;
   import hiraj.Nafy;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import jezi.Pyruleq;
   import com.company.assembleegameclient.parameters.Parameters;
   import syfuqycy.Zutus;
   import syfuqycy.Rewytoquk;


   public class Venop extends Object
   {
      public function Venop() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var death:Kejubuveh;

      public var player:Vusun;

      public var pukyso:Rumevo;

      public var pitegum:Wylot;

      public var newimawuq:Popefy;

      public var peg:Totitig;

      private var pemebi:Jygalikij;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pemebi=new Nafy(this.death.accountId_,this.death.charId_);
         this.cuzuvunoc();
         this.bofire();
         this.pymyn();
         return;
      }

      private function cuzuvunoc() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:SavedCharacter = this.player.roh(this.death.charId_);
         var _loc2_:int = _loc1_?_loc1_.level():0;
         var _loc3_:Pyruleq = new Pyruleq();
         _loc3_.category="killedBy";
         _loc3_.bozegyt=this.death.killedBy_;
         _loc3_.value=_loc2_;
         this.pukyso.dispatch(_loc3_);
         return;
      }

      private function bofire() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Parameters.data_.needsRandomRealm=false;
         Parameters.save();
         return;
      }

      private function pymyn() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.player.wegefog()==-1)
         {
            this.vypato();
         }
         else
         {
            this.newimawuq.dispatch(this.pemebi);
         }
         return;
      }

      private function vypato() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Zutus = new Zutus();
         _loc1_.add(this.pitegum);
         _loc1_.add(new Rewytoquk(this.newimawuq,this.pemebi));
         this.peg.add(_loc1_);
         _loc1_.start();
         return;
      }
   }
[/CLASS]
}