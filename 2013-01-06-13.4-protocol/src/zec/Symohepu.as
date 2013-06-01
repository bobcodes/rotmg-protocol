package zec
{
[CLASS248]   import tysenyzy.Zovisis;
   import qypupet.Tuhyfutos;
   import qypupet.Sikyvuvus;
   import kirofyny.Hehuf;
   import bocak.Soris;
   import bocak.Vopiho;
   import pogefeqeh.Wahovy;
   import qypupet.Vuravipyg;
   import jat.Linuzape;
   import jyz.Cijala;
   import qypupet.Vuke;
   import sanijijiz.Fyhigu;


   public class Symohepu extends Zovisis
   {
      public function Symohepu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Pobifiga;

      public var lycufasoc:Tuhyfutos;

      public var qidogy:Sikyvuvus;

      public var lyhog:Hehuf;

      public var cewi:Soris;

      public var gyjoj:Vopiho;

      public var viqelo:Wahovy;

      override public function initialize() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.init();
         var _loc1_:Vuravipyg = this.qidogy.jaq?this.qidogy.jaq:this.lycufasoc.kodu();
         this.view.vymawiw(_loc1_?_loc1_.wosyjuzed:null,_loc1_?_loc1_.sujyditig():0);
         this.view.zate.add(this.lewema);
         this.view.closed.add(this.zykekulucy);
         this.view.qosenic.add(this.tarini);
         this.view.buniwyr.add(this.qehahoq);
         this.cewi.add(this.bopih);
         return;
      }

      private function bopih() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.gun();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.zate.remove(this.lewema);
         this.view.qosenic.remove(this.tarini);
         this.view.buniwyr.remove(this.qehahoq);
         return;
      }

      private function zykekulucy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qidogy.clear();
         this.view.closed.remove(this.zykekulucy);
         return;
      }

      private function lewema() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qidogy.caller=Pobifiga;
         this.lyhog.dispatch(this.viqelo.getInstance(Linuzape));
         return;
      }

      private function tarini(param1:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Cijala = null;
         _loc2_=new Cijala();
         _loc2_.objectId_=this.qidogy.dede;
         _loc2_.objectType_=this.qidogy.qorecotym;
         _loc2_.lypuwyt=this.qidogy.sic;
         var _loc3_:Vuke = new Vuke(this.qidogy.jaq.lecafis(),_loc2_,Fyhigu.wucym);
         this.gyjoj.dispatch(_loc3_);
         return;
      }

      private function qehahoq(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Cijala = new Cijala();
         _loc2_.objectId_=this.qidogy.dede;
         _loc2_.objectType_=this.qidogy.qorecotym;
         _loc2_.lypuwyt=this.qidogy.sic;
         var _loc3_:Vuke = new Vuke(this.qidogy.jaq.lecafis(),_loc2_,Fyhigu.filywygok);
         this.gyjoj.dispatch(_loc3_);
         return;
      }
   }
[/CLASS]
}