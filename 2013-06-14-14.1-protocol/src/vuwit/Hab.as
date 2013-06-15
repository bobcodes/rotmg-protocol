package vuwit
{
   import tytojonib.Kyjefe;
   import cizagamym.Boquzojul;
   import fanij.Mitat;
   import jyhyzujyw.Gos;
   import dyca.Mes;
   import racitagy.Jazef;
   import fanij.Zosycip;
   import ducojoryn.Tawe;
   import vysob.ErrorDialog;


   public class Hab extends Kyjefe
   {
      public function Hab() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Rudive;

      public var ridecy:Boquzojul;

      public var hibuc:Mitat;

      public var kifi:Gos;

      public var difas:Mes;

      private const guhiri:String = "Pets.fuseError";

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.init(this.hibuc);
         this.view.toreg.add(this.bewoj);
         this.view.vejojyb.add(this.notu);
         this.view.juliref.add(this.fime);
         this.view.closed.addOnce(this.nydegazeq);
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

      private function bewoj(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hibuc.caller=Rudive;
         this.hibuc.selected=param1;
         this.ridecy.dispatch(this.difas.getInstance(Jazef));
         return;
      }

      private function fime(param1:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Zosycip = null;
         if(this.hibuc.remytyto())
         {
            _loc2_=new Zosycip(this.hibuc.baluq.lepuve(),this.hibuc.ticowob.lepuve(),Tawe.byfyvyfeh);
            this.nydegazeq();
            this.kifi.dispatch(_loc2_);
         }
         else
         {
            this.ridecy.dispatch(new ErrorDialog(this.guhiri));
         }
         return;
      }

      private function notu(param1:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Zosycip = null;
         if(this.hibuc.remytyto())
         {
            _loc2_=new Zosycip(this.hibuc.baluq.lepuve(),this.hibuc.ticowob.lepuve(),Tawe.bodovob);
            this.nydegazeq();
            this.kifi.dispatch(_loc2_);
         }
         else
         {
            this.ridecy.dispatch(new ErrorDialog(this.guhiri));
         }
         return;
      }

      private function nydegazeq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hibuc.clear();
         return;
      }
   }

}