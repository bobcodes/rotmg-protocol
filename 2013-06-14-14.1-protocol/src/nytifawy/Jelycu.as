package nytifawy
{
   import tytojonib.Kyjefe;
   import pumoc.Zesihag;
   import pugem.Account;
   import pumoc.Tejijuw;
   import tumi.Lukud;
   import tumi.ActionMapperAbstractydato;
   import pumoc.Gigo;
   import micac.Ciqyl;
   import cizagamym.Boquzojul;
   import cizagamym.Lebovas;
   import flash.display.Stage;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.events.Event;
   import sefylew.Fadyqe;
   import komi.Vibemod;


   public class Jelycu extends Kyjefe
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Jelycu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const bific:int = 10;

      public var view:Chat;

      public var model:Zesihag;

      public var account:Account;

      public var kihet:Tejijuw;

      public var dopypim:Lukud;

      public var racyg:ActionMapperAbstractydato;

      public var gagapas:Gigo;

      public var fer:Ciqyl;

      public var ridecy:Boquzojul;

      public var gimenakal:Lebovas;

      private var stage:Stage;

      private var tarapo:int;

      private var nafac:int;

      private var seculyv:Boolean = false;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.x=this.model.nabo.left;
         this.view.y=this.model.nabo.top;
         this.view.setup(this.model,this.account.zuqic());
         this.stage=this.view.stage;
         this.hupydyw();
         this.dopypim.add(this.huhu);
         this.ridecy.add(this.zehorenej);
         this.gimenakal.add(this.cefodej);
         return;
      }

      private function zehorenej(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mykadezyn();
         return;
      }

      private function cefodej() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hupydyw();
         return;
      }

      private function huhu(param1:Boolean, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.stage.focus=this.view;
            this.seculyv=false;
         }
         else
         {
            this.hupydyw();
            this.stage.focus=null;
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mykadezyn();
         this.dopypim.remove(this.huhu);
         this.ridecy.remove(this.zehorenej);
         this.gimenakal.remove(this.cefodej);
         this.stage=null;
         return;
      }

      private function hupydyw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.seculyv)
         {
            this.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
            this.stage.addEventListener(KeyboardEvent.KEY_UP,this.luw);
            this.seculyv=true;
         }
         return;
      }

      private function mykadezyn() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.seculyv)
         {
            this.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
            this.stage.removeEventListener(KeyboardEvent.KEY_UP,this.luw);
            this.stage.removeEventListener(Event.ENTER_FRAME,this.dereponab);
            this.seculyv=false;
         }
         return;
      }

      private function tuv(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==this.kihet.dybolisu())
         {
            this.hifyva(-1);
         }
         else
         {
            if(param1.keyCode==this.kihet.wifu())
            {
               this.hifyva(1);
            }
         }
         return;
      }

      private function hifyva(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tarapo=param1;
         this.racyg.dispatch(param1);
         this.nafac=0;
         this.view.addEventListener(Event.ENTER_FRAME,this.dereponab);
         return;
      }

      private function dereponab(param1:Event) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(this.nafac++>=bific)
         {
            this.racyg.dispatch(this.tarapo);
         }
         return;
      }

      private function luw(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.seculyv)
         {
            this.sadasyqal(param1.keyCode);
         }
         if(param1.keyCode==this.kihet.dybolisu()||param1.keyCode==this.kihet.wifu())
         {
            this.view.removeEventListener(Event.ENTER_FRAME,this.dereponab);
         }
         return;
      }

      private function sadasyqal(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.stage.focus==null||param1==this.kihet.hezi())
         {
            if(param1==this.kihet.mofirabi())
            {
               this.ninupyvib("/");
            }
            else
            {
               if(param1==this.kihet.vokega())
               {
                  this.ninupyvib("");
               }
               else
               {
                  if(param1==this.kihet.jejobiga())
                  {
                     this.ninupyvib("/g ");
                  }
                  else
                  {
                     if(param1==this.kihet.hezi())
                     {
                        this.ninupyvib("/tell "+this.gagapas.bumubat()+" ");
                     }
                  }
               }
            }
         }
         return;
      }

      private function ninupyvib(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.account.zuqic())
         {
            this.dopypim.dispatch(true,param1);
         }
         else
         {
            if(this.fer.qyhowo.evalIsNotInCombatMapArea())
            {
               this.ridecy.dispatch(new Fadyqe(Vibemod.noj));
            }
         }
         return;
      }
   }

}