package mywyvuryw
{
[CLASS1513]   import pogefeqeh.Wahovy;
   import sanijijiz.Savututil;
   import qypupet.Vuravipyg;
   import qypupet.Tuhyfutos;
   import bocak.Zihig;


   public class Socyhy extends Object
   {
      public function Socyhy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var viqelo:Wahovy;

      private var qyrobumaw:Savututil;

      private var message:Firuw;

      private var dymylavup:Vuravipyg;

      private var tukelac:Vuravipyg;

      public function monacok(param1:Firuw) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.message=param1;
         this.qyrobumaw=new Savututil();
         this.zejobanir();
         this.myfajecag(param1);
         this.lasawewo();
         return;
      }

      private function zejobanir() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tuhyfutos = this.viqelo.getInstance(Tuhyfutos);
         this.dymylavup=_loc1_.zujadogym(this.message.bycyl);
         this.dymylavup.rug(this.message.hokocy);
         this.qyrobumaw.dymylavup=this.dymylavup;
         return;
      }

      private function myfajecag(param1:Firuw) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tukelac=Vuravipyg.clone(this.dymylavup);
         this.tukelac.rug(param1.wugabeho);
         this.qyrobumaw.tukelac=this.tukelac;
         return;
      }

      private function lasawewo() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Zihig = this.viqelo.getInstance(Zihig);
         _loc1_.dispatch(this.qyrobumaw);
         return;
      }
   }
[/CLASS]
}