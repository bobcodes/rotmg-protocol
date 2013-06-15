package fysy
{
   import tytojonib.Kyjefe;
   import poho.Kyhy;
   import lemugo.Wokycuku;
   import zycysoj.Zoju;
   import kabam.rotmg.assets.services.Bytedif;
   import poho.Dywygave;
   import poho.Pom;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import com.company.assembleegameclient.util.Cinihel;
   import kabam.rotmg.assets.model.Animation;


   public class Misuviha extends Kyjefe
   {
      public function Misuviha() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:ClassDetailView;

      public var jopyza:Kyhy;

      public var kejisacok:Wokycuku;

      public var foku:Zoju;

      public var factory:Bytedif;

      private const sybiwu:Object = new Object();

      private var character:Dywygave;

      private var duwaje:Pom;

      private const fidijuq:Timer = new Timer(250,1);

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.character=this.jopyza.gype();
         this.fidijuq.addEventListener(TimerEvent.TIMER,this.nipasa);
         this.foku.add(this.gysuwydur);
         this.juduzo();
         this.gysuwydur();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.foku.remove(this.gysuwydur);
         this.fidijuq.removeEventListener(TimerEvent.TIMER,this.nipasa);
         this.view.qecuhicyq(null);
         this.laqifor();
         return;
      }

      private function juduzo() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:int = this.kejisacok.fegiwesyn.lysatul(this.character.id);
         var _loc2_:int = Cinihel.numStars(_loc1_);
         this.view.raqy(this.character.name,this.character.description,_loc2_,this.kejisacok.fegiwesyn.bestLevel(this.character.id),_loc1_);
         var _loc3_:int = Cinihel.nextStarFame(_loc1_,0);
         this.view.vutyja(this.character.name,_loc3_);
         return;
      }

      private function gysuwydur(param1:Pom=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.duwaje=param1=(param1)||(this.character.sybiwu.bahalelaf());
         this.fidijuq.start();
         return;
      }

      private function nipasa(param1:TimerEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Animation = this.sybiwu[this.duwaje.id]=(this.sybiwu[this.duwaje.id])||(this.factory.jet(this.duwaje.fegotu,200));
         this.view.qecuhicyq(_loc2_);
         return;
      }

      private function laqifor() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:String = null;
         var _loc2_:Animation = null;
         for (_loc1_ in this.sybiwu)
         {
            _loc2_=this.sybiwu[_loc1_];
            _loc2_.dispose();
            GlobalNotificationActionte this.sybiwu[[_loc1_]];
         }
         return;
      }
   }

}