package vuwit
{
   import tytojonib.Kyjefe;
   import fanij.Namejaja;
   import fanij.Mitat;
   import cizagamym.Boquzojul;
   import jyhyzujyw.Zohebof;
   import jyhyzujyw.Gos;
   import dyca.Mes;
   import fanij.Cun;
   import racitagy.Jazef;
   import dasefezy.Moceq;
   import fanij.Dofo;
   import ducojoryn.Tawe;


   public class Rebaleqo extends Kyjefe
   {
      public function Rebaleqo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Domuh;

      public var cybeco:Namejaja;

      public var hibuc:Mitat;

      public var ridecy:Boquzojul;

      public var jydo:Zohebof;

      public var kifi:Gos;

      public var difas:Mes;

      override public function initialize() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.init();
         var _loc1_:Cun = this.hibuc.baluq?this.hibuc.baluq:this.cybeco.tigosulo();
         this.view.hawisa(_loc1_?_loc1_.supufo:null,_loc1_?_loc1_.voz():0);
         this.view.toreg.add(this.bewoj);
         this.view.closed.add(this.nydegazeq);
         this.view.vejojyb.add(this.notu);
         this.view.juliref.add(this.fime);
         this.jydo.add(this.pufon);
         return;
      }

      private function pufon() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.qavizi();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.toreg.remove(this.bewoj);
         this.view.vejojyb.remove(this.notu);
         this.view.juliref.remove(this.fime);
         return;
      }

      private function nydegazeq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hibuc.clear();
         this.view.closed.remove(this.nydegazeq);
         return;
      }

      private function bewoj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hibuc.caller=Domuh;
         this.ridecy.dispatch(this.difas.getInstance(Jazef));
         return;
      }

      private function notu(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Moceq = null;
         _loc2_=new Moceq();
         _loc2_.objectId_=this.hibuc.mypu;
         _loc2_.objectType_=this.hibuc.puc;
         _loc2_.siketo=this.hibuc.bykano;
         var _loc3_:Dofo = new Dofo(this.hibuc.baluq.lepuve(),_loc2_,Tawe.bodovob);
         this.kifi.dispatch(_loc3_);
         return;
      }

      private function fime(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Moceq = new Moceq();
         _loc2_.objectId_=this.hibuc.mypu;
         _loc2_.objectType_=this.hibuc.puc;
         _loc2_.siketo=this.hibuc.bykano;
         var _loc3_:Dofo = new Dofo(this.hibuc.baluq.lepuve(),_loc2_,Tawe.byfyvyfeh);
         this.kifi.dispatch(_loc3_);
         return;
      }
   }

}