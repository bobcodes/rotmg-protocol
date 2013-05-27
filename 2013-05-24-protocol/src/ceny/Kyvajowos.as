package ceny
{
   import qov.Kalefu;
   import pepyca.Fifu;
   import aaa.rotmg.account.Account;
   import pepyca.Kar;
   import fuquqo.Peh;
   import fuquqo.Kunyma;
   import pepyca.Tazizo;
   import fom.Hepeg;
   import wegyluke.Hez;
   import wegyluke.Cowymute;
   import flash.display.Stage;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.events.Event;
   import kat.Puqyfebal;
   import aaa.rotmg.i18n.I18nKeys;


   public class Kyvajowos extends Kalefu
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Kyvajowos() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const wefy:int = 10;

      public var view:Chat;

      public var model:Fifu;

      public var account:Account;

      public var rahomov:Kar;

      public var zuqa:Peh;

      public var syvinun:Kunyma;

      public var fuq:Tazizo;

      public var ruhakony:Hepeg;

      public var naval:Hez;

      public var tusagecu:Cowymute;

      private var stage:Stage;

      private var wud:int;

      private var turab:int;

      private var ratoha:Boolean = false;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.x=this.model.cucivizyw.left;
         this.view.y=this.model.cucivizyw.top;
         this.view.setup(this.model,this.account.bugi());
         this.stage=this.view.stage;
         this.addListeners();
         this.zuqa.add(this.suvy);
         this.naval.add(this.wur);
         this.tusagecu.add(this.cunid);
         return;
      }

      private function wur(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.removeListeners();
         return;
      }

      private function cunid() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.addListeners();
         return;
      }

      private function suvy(param1:Boolean, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.stage.focus=this.view;
            this.removeListeners();
         }
         else
         {
            this.addListeners();
            this.stage.focus=null;
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.removeListeners();
         this.zuqa.remove(this.suvy);
         this.naval.remove(this.wur);
         this.tusagecu.remove(this.cunid);
         this.stage=null;
         return;
      }

      private function addListeners() : void {
         if(!this.ratoha)
         {
            this.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.desis);
            this.stage.addEventListener(KeyboardEvent.KEY_UP,this.seqedu);
            this.ratoha=true;
         }
         return;
      }

      private function removeListeners() : void {
         if(this.ratoha)
         {
            this.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.desis);
            this.stage.removeEventListener(KeyboardEvent.KEY_UP,this.seqedu);
            this.stage.removeEventListener(Event.ENTER_FRAME,this.nuparive);
            this.ratoha=false;
         }
         return;
      }

      private function desis(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==this.rahomov.tybydaz())
         {
            this.zutuvuf(-1);
         }
         else
         {
            if(param1.keyCode==this.rahomov.tupubo())
            {
               this.zutuvuf(1);
            }
         }
         return;
      }

      private function zutuvuf(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wud=param1;
         this.syvinun.dispatch(param1);
         this.turab=0;
         this.view.addEventListener(Event.ENTER_FRAME,this.nuparive);
         return;
      }

      private function nuparive(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.turab++>=wefy)
         {
            this.syvinun.dispatch(this.wud);
         }
         return;
      }

      private function seqedu(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.biracepet(param1.keyCode);
         if(param1.keyCode==this.rahomov.tybydaz()||param1.keyCode==this.rahomov.tupubo())
         {
            this.view.removeEventListener(Event.ENTER_FRAME,this.nuparive);
         }
         return;
      }

      private function biracepet(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.stage.focus==null)
         {
            if(param1==this.rahomov.buwutubo())
            {
               this.tun("/");
            }
            else
            {
               if(param1==this.rahomov.zuvupico())
               {
                  this.tun("");
               }
               else
               {
                  if(param1==this.rahomov.nam())
                  {
                     this.tun("/g ");
                  }
                  else
                  {
                     if(param1==this.rahomov.dyhap())
                     {
                        this.tun("/tell "+this.fuq.tapu()+" ");
                     }
                  }
               }
            }
         }
         return;
      }

      private function tun(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.account.bugi())
         {
            this.zuqa.dispatch(true,param1);
         }
         else
         {
            if(this.ruhakony.qizys.evalIsNotInCombatMapArea())
            {
               this.naval.dispatch(new Puqyfebal(I18nKeys.hapuc));
            }
         }
         return;
      }
   }

}