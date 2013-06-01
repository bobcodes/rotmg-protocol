package hine
{
[CLASS1126]   import tysenyzy.Zovisis;
   import setuv.Tufyz;
   import leselo.Account;
   import setuv.Puvygy;
   import tuzopite.Jomytejod;
   import tuzopite.Diwewoqem;
   import setuv.Mocor;
   import vinirudel.Wukyva;
   import kirofyny.Hehuf;
   import kirofyny.Tiqimav;
   import flash.display.Stage;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.events.Event;
   import sojul.Viropisos;
   import haqakel.Kefyfa;


   public class Byzu extends Zovisis
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Byzu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const dodypywe:int = 10;

      public var view:Chat;

      public var model:Tufyz;

      public var account:Account;

      public var datejib:Puvygy;

      public var dyrisicis:Jomytejod;

      public var vypenuvoh:Diwewoqem;

      public var leriju:Mocor;

      public var fysufapav:Wukyva;

      public var lyhog:Hehuf;

      public var madeve:Tiqimav;

      private var stage:Stage;

      private var wulof:int;

      private var sarigejy:int;

      private var dona:Boolean = false;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.x=this.model.mykubowob.left;
         this.view.y=this.model.mykubowob.top;
         this.view.setup(this.model,this.account.tuq());
         this.stage=this.view.stage;
         this.kuqoquju();
         this.dyrisicis.add(this.tavugu);
         this.lyhog.add(this.byvifan);
         this.madeve.add(this.japes);
         return;
      }

      private function byvifan(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tamugucal();
         return;
      }

      private function japes() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kuqoquju();
         return;
      }

      private function tavugu(param1:Boolean, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.stage.focus=this.view;
            this.tamugucal();
         }
         else
         {
            this.kuqoquju();
            this.stage.focus=null;
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tamugucal();
         this.dyrisicis.remove(this.tavugu);
         this.lyhog.remove(this.byvifan);
         this.madeve.remove(this.japes);
         this.stage=null;
         return;
      }

      private function kuqoquju() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.dona)
         {
            this.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
            this.stage.addEventListener(KeyboardEvent.KEY_UP,this.sywihyhih);
            this.dona=true;
         }
         return;
      }

      private function tamugucal() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.dona)
         {
            this.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
            this.stage.removeEventListener(KeyboardEvent.KEY_UP,this.sywihyhih);
            this.stage.removeEventListener(Event.ENTER_FRAME,this.mumapecon);
            this.dona=false;
         }
         return;
      }

      private function wuja(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.keyCode==this.datejib.digaqolef())
         {
            this.soj(-1);
         }
         else
         {
            if(param1.keyCode==this.datejib.cumes())
            {
               this.soj(1);
            }
         }
         return;
      }

      private function soj(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wulof=param1;
         this.vypenuvoh.dispatch(param1);
         this.sarigejy=0;
         this.view.addEventListener(Event.ENTER_FRAME,this.mumapecon);
         return;
      }

      private function mumapecon(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.sarigejy++>=dodypywe)
         {
            this.vypenuvoh.dispatch(this.wulof);
         }
         return;
      }

      private function sywihyhih(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cyfale(param1.keyCode);
         if(param1.keyCode==this.datejib.digaqolef()||param1.keyCode==this.datejib.cumes())
         {
            this.view.removeEventListener(Event.ENTER_FRAME,this.mumapecon);
         }
         return;
      }

      private function cyfale(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.stage.focus==null)
         {
            if(param1==this.datejib.curykyt())
            {
               this.vuce("/");
            }
            else
            {
               if(param1==this.datejib.focu())
               {
                  this.vuce("");
               }
               else
               {
                  if(param1==this.datejib.mapeba())
                  {
                     this.vuce("/g ");
                  }
                  else
                  {
                     if(param1==this.datejib.cizasef())
                     {
                        this.vuce("/tell "+this.leriju.vugireced()+" ");
                     }
                  }
               }
            }
         }
         return;
      }

      private function vuce(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.account.tuq())
         {
            this.dyrisicis.dispatch(true,param1);
         }
         else
         {
            if(this.fysufapav.palaliz.evalIsNotInCombatMapArea())
            {
               this.lyhog.dispatch(new Viropisos(Kefyfa.kok));
            }
         }
         return;
      }
   }
[/CLASS]
}