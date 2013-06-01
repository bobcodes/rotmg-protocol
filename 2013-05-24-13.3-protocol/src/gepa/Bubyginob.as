package gepa
{
   import qov.Kalefu;
   import zoroc.Gecezyw;
   import zoroc.Taqosohuf;
   import wegyluke.Hez;
   import pujo.Gugycag;
   import pujo.Vitibuc;
   import kyco.Nun;
   import zoroc.Bezuco;
   import fidymu.Ditymuh;
   import cypujavop.Bocuve;
   import zoroc.Dyziwif;
   import bisok.Mynaqu;


   public class Bubyginob extends Kalefu
   {
      public function Bubyginob() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Fedif;

      public var duqa:Gecezyw;

      public var paqocahu:Taqosohuf;

      public var naval:Hez;

      public var qotytahoc:Gugycag;

      public var lydufady:Vitibuc;

      public var cemohoqal:Nun;

      override public function initialize() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.init();
         var _loc1_:Bezuco = this.paqocahu.puda?this.paqocahu.puda:this.duqa.rizidakuv();
         this.view.pic(_loc1_?_loc1_.voqy:null,_loc1_?_loc1_.hevozik():0);
         this.view.sozy.add(this.risohukit);
         this.view.closed.add(this.pomuwok);
         this.view.huvi.add(this.tyziworuk);
         this.view.fiwabivy.add(this.jepimuguj);
         this.qotytahoc.add(this.vut);
         return;
      }

      private function vut() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.nadihe();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.sozy.remove(this.risohukit);
         this.view.huvi.remove(this.tyziworuk);
         this.view.fiwabivy.remove(this.jepimuguj);
         return;
      }

      private function pomuwok() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.paqocahu.clear();
         this.view.closed.remove(this.pomuwok);
         return;
      }

      private function risohukit() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.paqocahu.caller=Fedif;
         this.naval.dispatch(this.cemohoqal.getInstance(Ditymuh));
         return;
      }

      private function tyziworuk(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Bocuve = null;
         _loc2_=new Bocuve();
         _loc2_.objectId_=this.paqocahu.vupu;
         _loc2_.objectType_=this.paqocahu.beh;
         _loc2_.byzezil=this.paqocahu.mym;
         var _loc3_:Dyziwif = new Dyziwif(this.paqocahu.puda.gutod(),_loc2_,Mynaqu.binuli);
         this.lydufady.dispatch(_loc3_);
         return;
      }

      private function jepimuguj(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Bocuve = new Bocuve();
         _loc2_.objectId_=this.paqocahu.vupu;
         _loc2_.objectType_=this.paqocahu.beh;
         _loc2_.byzezil=this.paqocahu.mym;
         var _loc3_:Dyziwif = new Dyziwif(this.paqocahu.puda.gutod(),_loc2_,Mynaqu.gop);
         this.lydufady.dispatch(_loc3_);
         return;
      }
   }

}