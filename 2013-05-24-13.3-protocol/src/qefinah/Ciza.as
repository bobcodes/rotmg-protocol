package qefinah
{
   import qov.Kalefu;
   import fom.Hepeg;
   import fom.Lihivak;
   import sasacen.Baquja;
   import sasacen.Cycyd;
   import pujo.Toqaqeg;
   import kabam.rotmg.assets.services.Rogih;
   import ruwysepyd.Qah;
   import zoroc.Gecezyw;
   import com.company.assembleegameclient.objects.Player;
   import coh.Wynajori;


   public class Ciza extends Kalefu
   {
      public function Ciza() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Zygafe;

      public var ruhakony:Hepeg;

      public var pog:Lihivak;

      public var zihy:Baquja;

      public var fymyw:Cycyd;

      public var zype:Toqaqeg;

      public var rabez:Rogih;

      public var vozori:Quwaku;

      public var qyli:Qah;

      public var lagylo:Gylotu;

      public var gimyliq:Gecezyw;

      private var tedef:Boolean = true;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.netusuzu.add(this.reku);
         this.zihy.addOnce(this.nobyw);
         this.vozori.add(this.pypujyg);
         this.qyli.add(this.votigy);
         this.lagylo.add(this.kokejocy);
         this.zype.add(this.kaca);
         return;
      }

      private function pypujyg(param1:Miqik) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tedef=false;
         this.vif();
         this.nobyw(this.ruhakony.qizys.map.player_);
         return;
      }

      private function votigy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tedef=true;
         this.vif();
         this.nobyw(this.ruhakony.qizys.map.player_);
         this.view.jakyse(1);
         return;
      }

      private function kokejocy() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = this.view.wiwelatys+1;
         _loc1_=_loc1_%this.view.liluhe.length;
         this.view.jakyse(_loc1_);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.netusuzu.remove(this.reku);
         this.fymyw.remove(this.mocuwyzo);
         return;
      }

      private function nobyw(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!param1)
         {
            return;
         }
         this.view.bovose(this.rabez.tihaqoruh(Lased.gyc),new Hywyhije(param1));
         if(this.tedef)
         {
            this.view.bovose(this.rabez.tihaqoruh(Lased.hisyg),new Myruqep(this.view.HEIGHT));
         }
         if(param1.jisoh)
         {
            this.view.bovose(this.rabez.tihaqoruh(Lased.zatinamu),new Paw(param1));
         }
         else
         {
            this.fymyw.add(this.mocuwyzo);
         }
         if(this.gimyliq.rizidakuv())
         {
            this.view.bovose(this.rabez.tihaqoruh(Lased.sob),new Wynajori());
         }
         return;
      }

      private function vif() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.vif();
         return;
      }

      private function reku(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pog.digyqy=param1;
         return;
      }

      private function mocuwyzo(param1:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Player = null;
         if(param1)
         {
            _loc2_=this.ruhakony.qizys.map.player_;
            this.view.bovose(this.rabez.tihaqoruh(Lased.zatinamu),new Paw(_loc2_));
            this.fymyw.remove(this.mocuwyzo);
         }
         return;
      }

      private function kaca() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vif();
         this.nobyw(this.ruhakony.qizys.map.player_);
         return;
      }
   }

}