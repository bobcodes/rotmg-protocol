package zitofoty
{
[CLASS345]   import leselo.Account;
   import kirofyny.Hehuf;
   import dylaqezo.Vusun;
   import dutes.Lumihat;
   import dutes.Dad;
   import syfuqycy.Totitig;
   import jezi.PurchaseCharacterClassTask;
   import jezi.Zir;
   import vofepimy.Wylot;
   import sojul.Viropisos;
   import syfuqycy.Zutus;
   import syfuqycy.Nizus;
   import syfuqycy.Rewytoquk;
   import syfuqycy.Motumeq;
   import tidi.Vujiru;
   import haqakel.Kefyfa;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Doloj extends Object
   {
      public function Doloj() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var classType:int;

      public var account:Account;

      public var lyhog:Hehuf;

      public var jojun:Vusun;

      public var gyp:Lumihat;

      public var ceqiru:Dad;

      public var peg:Totitig;

      public var pitegum:PurchaseCharacterClassTask;

      public var failure:Zir;

      public var guritejyp:Wylot;

      private var cost:int;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cost=this.fezevub();
         if(!this.account.tuq())
         {
            this.rek();
         }
         else
         {
            if(this.werubani())
            {
               this.muvypobic();
            }
            else
            {
               this.vuzije();
            }
         }
         return;
      }

      private function rek() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lyhog.dispatch(new Viropisos("In order to unlock a class type you must be a registered user."));
         this.gyp.dispatch();
         return;
      }

      private function muvypobic() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jojun.kisom(-1*this.cost);
         this.ceqiru.dispatch(this.classType);
         var _loc1_:Zutus = new Zutus();
         _loc1_.add(new Nizus(this.pitegum,this.guritejyp,this.jumyqake()));
         _loc1_.add(new Rewytoquk(this.gyp));
         this.peg.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function jumyqake() : Motumeq {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.failure.qepycug=this.pitegum;
         return this.failure;
      }

      private function vuzije() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Vujiru = new Vujiru();
         _loc1_.rezynobik(Kefyfa.duwuju,{cost:this.cost});
         this.lyhog.dispatch(_loc1_);
         this.gyp.dispatch();
         return;
      }

      private function fezevub() : int {
         return ObjectLibrary.zedij[this.classType].UnlockCost;
      }

      private function werubani() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !this.cost||this.cost<=this.jojun.gagesuno();
      }
   }
[/CLASS]
}