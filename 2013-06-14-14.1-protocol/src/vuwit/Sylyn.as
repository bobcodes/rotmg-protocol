package vuwit
{
   import tytojonib.Kyjefe;
   import fanij.Namejaja;
   import jyhyzujyw.Gos;
   import pugem.Account;
   import cizagamym.Boquzojul;
   import cizagamym.Lebovas;
   import fanij.Cukot;
   import fanij.Wymove;
   import fanij.Qewi;


   public class Sylyn extends Kyjefe
   {
      public function Sylyn() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:YardUpgraderView;

      public var buguzunag:Namejaja;

      public var kifi:Gos;

      public var account:Account;

      public var ridecy:Boquzojul;

      public var gimenakal:Lebovas;

      override public function initialize() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Cukot = new Cukot();
         var _loc2_:int = this.buguzunag.lebozej();
         var _loc3_:int = _loc2_<Wymove.hov.qyb?Wymove.naryq(_loc2_+1).qyb:Wymove.hov.qyb;
         _loc1_.fogazatyp=Wymove.naryq(_loc2_).value;
         _loc1_.sogi=Wymove.naryq(_loc3_).value;
         _loc1_.secahewyf=this.buguzunag.feci();
         _loc1_.vutywanuj=this.buguzunag.casoloqe();
         this.view.init(_loc1_);
         this.view.juliref.add(this.fime);
         this.view.vejojyb.add(this.notu);
         return;
      }

      private function notu(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cagykuz(0);
         return;
      }

      private function fime(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cagykuz(1);
         return;
      }

      private function cagykuz(param1:uint) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:int = this.buguzunag.kifuqim();
         var _loc3_:Qewi = new Qewi(_loc2_,param1);
         this.gimenakal.dispatch();
         this.kifi.dispatch(_loc3_);
         return;
      }
   }

}