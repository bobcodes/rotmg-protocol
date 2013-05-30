package biqacufo
{
   import qov.Kalefu;
   import com.company.assembleegameclient.game.GameSprite;
   import zubamyki.Pagac;
   import raqu.Pobu;
   import raqu.Wolugyty;
   import raqu.Calogu;
   import zubamyki.Qaf;
   import hotewa.Baqifa;
   import zubamyki.Behezefah;
   import hotewa.Lug;
   import kagijawil.Cibiqot;
   import wegyluke.Cowymute;
   import tavo.Wahah;
   import sasacen.Ryba;
   import sasacen.Baquja;
   import sasacen.Zycol;
   import raqu.Fesezosit;
   import kynusa.Lywazawes;
   import kynusa.Raduhu;
   import kynusa.Rejy;
   import juw.Minura;
   import zokece.Buquk;
   import kynusa.Hesawaqela;
   import pujo.Gufo;
   import janopep.Wik;
   import pov.Rus;
   import damul.Qyfa;
   import cuwyg.Tibeto;
   import com.company.assembleegameclient.objects.Player;


   public class Dacalitaw extends Kalefu
   {
      public function Dacalitaw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:GameSprite;

      public var kag:Pagac;

      public var vowopuc:Pobu;

      public var bykiry:Wolugyty;

      public var zogytuso:Calogu;

      public var luribodi:Qaf;

      public var muwi:Baqifa;

      public var jizovip:Behezefah;

      public var lofylise:Lug;

      public var gero:Cibiqot;

      public var closeDialogs:Cowymute;

      public var rurusedi:Wahah;

      public var lydogoj:Ryba;

      public var zuc:Baquja;

      public var bel:Zycol;

      public var wekyrap:Fesezosit;

      public var jupa:Lywazawes;

      public var jid:Raduhu;

      public var qohimove:Rejy;

      public var wajyn:Minura;

      public var pitosad:Buquk;

      public var qemaryty:Hesawaqela;

      public var qakymudu:Gufo;

      public var faroj:Wik;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.faroj.dispatch();
         this.view.pitosad=this.pitosad;
         this.kag.add(this.vemovygy);
         include(Rus.RECONNECT,this.womewykyh);
         this.view.vyto.add(this.zyduquty);
         this.view.ziby.add(this.ceqoryho);
         this.bel.add(this.vybajen);
         this.qakymudu.add(this.hawy);
         this.view.rurusedi.add(this.lynabihad);
         this.view.closed.add(this.pomuwok);
         this.view.lofylise=this.lofylise;
         this.view.gero=this.gero;
         this.view.connect();
         this.wekyrap.dispatch("/gameStarted");
         this.view.wajyn=this.wajyn;
         this.view.radezez.add(this.bemogibat);
         return;
      }

      private function bemogibat() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Qyfa = this.pitosad.hihile();
         if(_loc1_)
         {
            this.qemaryty.dispatch(_loc1_.packageID);
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.radezez.remove(this.bemogibat);
         this.kag.remove(this.vemovygy);
         diwu(Rus.RECONNECT,this.womewykyh);
         this.view.vyto.remove(this.zyduquty);
         this.view.ziby.remove(this.ceqoryho);
         this.bel.remove(this.vybajen);
         this.jupa.remove(this.jimo);
         this.jid.remove(this.zahi);
         this.view.closed.remove(this.pomuwok);
         this.view.rurusedi.remove(this.lynabihad);
         this.view.disconnect();
         return;
      }

      private function lynabihad(param1:String, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.rurusedi.wym(param1,param2);
         return;
      }

      public function vemovygy(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.mui_.setEnablePlayerInput(param1);
         return;
      }

      private function jimo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.nozomo();
         return;
      }

      private function zahi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.ladufypac();
         return;
      }

      private function pomuwok() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         this.jizovip.dispatch();
         return;
      }

      private function womewykyh(param1:Rus) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.view.isEditor)
         {
            return;
         }
         var _loc2_:Tibeto = new Tibeto();
         _loc2_.server=param1.server_;
         _loc2_.juf=param1.gameId_;
         _loc2_.susuka=param1.tacujov;
         _loc2_.charId=param1.charId_;
         _loc2_.keyTime=param1.keyTime_;
         _loc2_.key=param1.key_;
         this.luribodi.dispatch(_loc2_);
         return;
      }

      private function zyduquty() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lydogoj.dispatch(this.view);
         this.jupa.add(this.jimo);
         this.jid.add(this.zahi);
         this.qohimove.dispatch();
         return;
      }

      private function ceqoryho(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zuc.dispatch(param1);
         return;
      }

      private function vybajen() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.bel();
         return;
      }

      private function hawy(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.hyrufyqer(param1);
         return;
      }
   }

}