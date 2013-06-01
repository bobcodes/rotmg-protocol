package dugahymu
{
[CLASS556]   import tysenyzy.Zovisis;
   import vinirudel.Wukyva;
   import vinirudel.Heqodeno;
   import nylos.Kyk;
   import nylos.Magokiqez;
   import bocak.Wuqez;
   import kabam.rotmg.assets.services.Dejuceb;
   import tidi.Larebur;
   import qypupet.Tuhyfutos;
   import com.company.assembleegameclient.objects.Player;
   import fyvanod.Tysusi;


   public class Qavepiw extends Zovisis
   {
      public function Qavepiw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Silevuq;

      public var fysufapav:Wukyva;

      public var kena:Heqodeno;

      public var fyz:Kyk;

      public var bet:Magokiqez;

      public var lytydohod:Wuqez;

      public var nik:Dejuceb;

      public var nopyb:Watygilar;

      public var judigan:Larebur;

      public var qasypuc:Barehyr;

      public var gadavuf:Tuhyfutos;

      private var ditiduso:Boolean = true;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.wov.add(this.padet);
         this.fyz.addOnce(this.qytiramo);
         this.nopyb.add(this.vycocepi);
         this.judigan.add(this.tuhumiwi);
         this.qasypuc.add(this.guko);
         this.lytydohod.add(this.somekofa);
         return;
      }

      private function vycocepi(param1:Hohu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ditiduso=false;
         this.sewibo();
         this.qytiramo(this.fysufapav.palaliz.map.player_);
         return;
      }

      private function tuhumiwi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ditiduso=true;
         this.sewibo();
         this.qytiramo(this.fysufapav.palaliz.map.player_);
         this.view.qeca(1);
         return;
      }

      private function guko() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = this.view.garyzin+1;
         _loc1_=_loc1_%this.view.sapar.length;
         this.view.qeca(_loc1_);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.wov.remove(this.padet);
         this.bet.remove(this.casece);
         return;
      }

      private function qytiramo(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!param1)
         {
            return;
         }
         this.view.pepibymi(this.nik.lofycuvy(Piqubidak.jah),new Hujene(param1));
         if(this.ditiduso)
         {
            this.view.pepibymi(this.nik.lofycuvy(Piqubidak.catatyq),new Zube(this.view.HEIGHT));
         }
         if(param1.zohu)
         {
            this.view.pepibymi(this.nik.lofycuvy(Piqubidak.falozem),new Jurewu(param1));
         }
         else
         {
            this.bet.add(this.casece);
         }
         if(this.gadavuf.kodu())
         {
            this.view.pepibymi(this.nik.lofycuvy(Piqubidak.fibaz),new Tysusi());
         }
         return;
      }

      private function sewibo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.sewibo();
         return;
      }

      private function padet(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kena.bykapise=param1;
         return;
      }

      private function casece(param1:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Player = null;
         if(param1)
         {
            _loc2_=this.fysufapav.palaliz.map.player_;
            this.view.pepibymi(this.nik.lofycuvy(Piqubidak.falozem),new Jurewu(_loc2_));
            this.bet.remove(this.casece);
         }
         return;
      }

      private function somekofa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sewibo();
         this.qytiramo(this.fysufapav.palaliz.map.player_);
         return;
      }
   }
[/CLASS]
}