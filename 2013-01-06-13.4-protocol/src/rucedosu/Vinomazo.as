package rucedosu
{
[CLASS514]   import tysenyzy.Zovisis;
   import com.company.assembleegameclient.game.GameSprite;
   import tusidywuq.Regyd;
   import dutes.Luzuqo;
   import dutes.Vow;
   import dutes.Sycanetal;
   import tusidywuq.Nan;
   import dylaqezo.Vusun;
   import tusidywuq.Nonedeloh;
   import dylaqezo.Buzykoga;
   import jet.Varusici;
   import kirofyny.Tiqimav;
   import vole.Sul;
   import nylos.Vefoboloq;
   import nylos.Kyk;
   import nylos.Myqim;
   import dutes.Vavaq;
   import ruf.Habihej;
   import ruf.Hoqilo;
   import ruf.Zur;
   import sakaja.Zuvejos;
   import zozimuk.Zuresasy;
   import ruf.Licid;
   import bocak.Larijop;
   import fucyquzu.Kiqona;
   import jodahije.Puvyveh;
   import kuniv.Nogofado;
   import guvakipe.Nedasefyg;
   import com.company.assembleegameclient.objects.Player;


   public class Vinomazo extends Zovisis
   {
      public function Vinomazo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:GameSprite;

      public var picywu:Regyd;

      public var bejony:Luzuqo;

      public var wukulomik:Vow;

      public var cucec:Sycanetal;

      public var gatav:Nan;

      public var jojun:Vusun;

      public var vuqo:Nonedeloh;

      public var fabemus:Buzykoga;

      public var legefiti:Varusici;

      public var closeDialogs:Tiqimav;

      public var peg:Sul;

      public var cico:Vefoboloq;

      public var bikoku:Kyk;

      public var pugiha:Myqim;

      public var qosuvyzuj:Vavaq;

      public var dedal:Habihej;

      public var gufazyv:Hoqilo;

      public var hiden:Zur;

      public var tiki:Zuvejos;

      public var wiq:Zuresasy;

      public var wafizozen:Licid;

      public var towuh:Larijop;

      public var wawavurysi:Kiqona;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wawavurysi.dispatch();
         this.view.wiq=this.wiq;
         this.picywu.add(this.mujijolil);
         jew(Puvyveh.RECONNECT,this.dabaf);
         this.view.zem.add(this.tojegu);
         this.view.reduqyr.add(this.jeqyfaduf);
         this.pugiha.add(this.noqony);
         this.towuh.add(this.dytis);
         this.view.peg.add(this.pyk);
         this.view.closed.add(this.zykekulucy);
         this.view.fabemus=this.fabemus;
         this.view.legefiti=this.legefiti;
         this.view.connect();
         this.qosuvyzuj.dispatch("/gameStarted");
         this.view.tiki=this.tiki;
         this.view.zavycy.add(this.bobamimy);
         return;
      }

      private function bobamimy() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nogofado = this.wiq.luvyjimyv();
         if(_loc1_)
         {
            this.wafizozen.dispatch(_loc1_.packageID);
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.zavycy.remove(this.bobamimy);
         this.picywu.remove(this.mujijolil);
         mojuc(Puvyveh.RECONNECT,this.dabaf);
         this.view.zem.remove(this.tojegu);
         this.view.reduqyr.remove(this.jeqyfaduf);
         this.pugiha.remove(this.noqony);
         this.dedal.remove(this.jufu);
         this.gufazyv.remove(this.zita);
         this.view.closed.remove(this.zykekulucy);
         this.view.peg.remove(this.pyk);
         this.view.disconnect();
         return;
      }

      private function pyk(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.peg.mebicavap(param1,param2);
         return;
      }

      public function mujijolil(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.mui_.setEnablePlayerInput(param1);
         return;
      }

      private function jufu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.gipudygi();
         return;
      }

      private function zita() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.cize();
         return;
      }

      private function zykekulucy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closeDialogs.dispatch();
         this.vuqo.dispatch();
         return;
      }

      private function dabaf(param1:Puvyveh) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.view.isEditor)
         {
            return;
         }
         var _loc2_:Nedasefyg = new Nedasefyg();
         _loc2_.server=param1.server_;
         _loc2_.vanu=param1.gameId_;
         _loc2_.buny=param1.kasyda;
         _loc2_.charId=param1.charId_;
         _loc2_.sufosyz=param1.keyTime_;
         _loc2_.key=param1.key_;
         this.gatav.dispatch(_loc2_);
         return;
      }

      private function tojegu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cico.dispatch(this.view);
         this.dedal.add(this.jufu);
         this.gufazyv.add(this.zita);
         this.hiden.dispatch();
         return;
      }

      private function jeqyfaduf(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bikoku.dispatch(param1);
         return;
      }

      private function noqony() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.pugiha();
         return;
      }

      private function dytis(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.wywev(param1);
         return;
      }
   }
[/CLASS]
}