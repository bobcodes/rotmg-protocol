package wenono
{
   import tytojonib.Kyjefe;
   import waryp.Cysaruha;
   import pugem.Account;
   import lemugo.Wokycuku;
   import pomujukir.Cirumy;
   import pomujukir.Boqutujy;
   import sefylew.Rut;
   import risic.Jyr;
   import gabufo.Tydagid;
   import tetapovuw.KabamAccountInfoView;
   import taruco.KongregateAccountInfoView;
   import refeced.Cacuk;
   import myh.Suba;
   import byredo.Monewys;
   import tam.Syzev;
   import mavew.Qyryl;


   public class Fuhokiz extends Kyjefe
   {
      public function Fuhokiz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Cysaruha;

      public var account:Account;

      public var kejisacok:Wokycuku;

      public var qotufofa:Cirumy;

      public var zawowyn:Boqutujy;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.tooltip.add(this.hyguzasa);
         this.view.gidukamo(this.kejisacok.pikir());
         this.view.fybat(this.kejisacok.qasafake(),this.kejisacok.gyharo());
         this.view.cycuza(this.kafur());
         return;
      }

      private function kafur() : Rut {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Rut = null;
         switch(null)
         {
            case Jyr.rihigenah:
               _loc1_=new Tydagid();
               break;
            case Suba.rihigenah:
               _loc1_=new KabamAccountInfoView();
               break;
            case Monewys.rihigenah:
               _loc1_=new KongregateAccountInfoView();
               break;
            case Syzev.rihigenah:
               _loc1_=new Cacuk();
               break;
         }
         return _loc1_;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.tooltip.remove(this.hyguzasa);
         this.zawowyn.dispatch();
         return;
      }

      private function hyguzasa(param1:Qyryl) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qotufofa.dispatch(param1);
         return;
      }
   }

}