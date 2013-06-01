package ceny
{
   import qov.Kalefu;
   import pepyca.Fifu;
   import heko.Vagabe;
   import heko.Kup;
   import fuquqo.Tybyze;
   import fuquqo.Peh;
   import pepyca.Tazizo;
   import pepyca.Kar;
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;


   public class Kidyzy extends Kalefu
   {
      public function Kidyzy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Lazegi;

      public var model:Fifu;

      public var lulim:Vagabe;

      public var radida:Kup;

      public var catot:Tybyze;

      public var zuqa:Peh;

      public var fuq:Tazizo;

      public var bododum:Kar;

      public var stage:Stage;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.stage=this.view.stage;
         this.stage.addEventListener(KeyboardEvent.KEY_UP,this.seqedu);
         this.view.setup(this.model,this.holasubuz(),this.fuq);
         this.view.message.add(this.cuka);
         this.view.close.add(this.memelo);
         this.zuqa.add(this.suvy);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.message.remove(this.cuka);
         this.view.close.remove(this.memelo);
         this.zuqa.remove(this.suvy);
         this.stage.removeEventListener(KeyboardEvent.KEY_UP,this.seqedu);
         return;
      }

      private function memelo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zuqa.dispatch(false,"");
         this.fuq.timagulo();
         return;
      }

      private function cuka(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.catot.dispatch(param1);
         this.zuqa.dispatch(false,"");
         return;
      }

      private function suvy(param1:Boolean, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.view.activate(param2,true);
         }
         else
         {
            this.view.deactivate();
         }
         return;
      }

      private function holasubuz() : TextField {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:TextField = this.lulim.cetovuzy();
         this.radida.apply(_loc1_,14,16777215,true);
         return _loc1_;
      }

      private function seqedu(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if((this.view.visible)&&(this.stage.focus==null||(this.valusewam())))
         {
            this.zol(param1);
         }
         return;
      }

      private function valusewam() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.stage.focus.parent==this.view)&&!(this.stage.focus==this.view);
      }

      private function zol(param1:KeyboardEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.stopImmediatePropagation();
         var _loc2_:uint = param1.keyCode;
         if(_loc2_==this.bododum.buwutubo())
         {
            this.view.activate("/",true);
         }
         else
         {
            if(_loc2_==this.bododum.zuvupico())
            {
               this.view.activate(null,true);
            }
            else
            {
               if(_loc2_==this.bododum.nam())
               {
                  this.view.activate("/g ",true);
               }
               else
               {
                  if(_loc2_==this.bododum.dyhap())
                  {
                     this.view.activate("/tell "+this.fuq.tapu()+" ",true);
                  }
               }
            }
         }
         return;
      }
   }

}