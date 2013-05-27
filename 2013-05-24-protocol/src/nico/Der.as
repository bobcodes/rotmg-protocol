package nico
{
   import qov.Kalefu;
   import fulaw.Vihekivuc;
   import hotewa.Baqifa;
   import tuma.Pabacidac;
   import kabam.rotmg.assets.services.Cafe;
   import fulaw.Jimi;
   import fulaw.Dasin;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import com.company.assembleegameclient.util.Wagoq;
   import kabam.rotmg.assets.model.Animation;


   public class Der extends Kalefu
   {
      public function Der() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:ClassDetailView;

      public var sydo:Vihekivuc;

      public var muwi:Baqifa;

      public var komi:Pabacidac;

      public var factory:Cafe;

      private const socucu:Object = new Object();

      private var character:Jimi;

      private var jeciwyzil:Dasin;

      private const bonata:Timer = new Timer(250,1);

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.character=this.sydo.zega();
         this.bonata.addEventListener(TimerEvent.TIMER,this.piwywov);
         this.komi.add(this.tedodyhag);
         this.wilav();
         this.tedodyhag();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.komi.remove(this.tedodyhag);
         this.bonata.removeEventListener(TimerEvent.TIMER,this.piwywov);
         this.view.resoji(null);
         this.supasyty();
         return;
      }

      private function wilav() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:int = this.muwi.qyk.gat(this.character.id);
         var _loc2_:int = Wagoq.numStars(_loc1_);
         this.view.jaribosod(this.character.name,this.character.description,_loc2_,this.muwi.qyk.bestLevel(this.character.id),_loc1_);
         var _loc3_:int = Wagoq.nextStarFame(_loc1_,0);
         this.view.movilal(this.character.name,_loc3_);
         return;
      }

      private function tedodyhag(param1:Dasin=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.jeciwyzil=param1=(param1)||(this.character.socucu.mipozilin());
         this.bonata.start();
         return;
      }

      private function piwywov(param1:TimerEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Animation = this.socucu[this.jeciwyzil.id]=(this.socucu[this.jeciwyzil.id])||(this.factory.cegid(this.jeciwyzil.ladewavaq,200));
         this.view.resoji(_loc2_);
         return;
      }

      private function supasyty() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:String = null;
         var _loc2_:Animation = null;
         for (_loc1_ in this.socucu)
         {
            _loc2_=this.socucu[_loc1_];
            _loc2_.dispose();
            delete this.socucu[[_loc1_]];
         }
         return;
      }
   }

}