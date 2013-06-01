package hine
{
[CLASS1130]   import tysenyzy.Zovisis;
   import setuv.Tufyz;
   import haqakel.Mykob;
   import haqakel.Cuku;
   import tuzopite.Zylut;
   import tuzopite.Jomytejod;
   import setuv.Mocor;
   import setuv.Puvygy;
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;


   public class Noqotyraq extends Zovisis
   {
      public function Noqotyraq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Ficezelum;

      public var model:Tufyz;

      public var byqiq:Mykob;

      public var nodujijyw:Cuku;

      public var lakomar:Zylut;

      public var dyrisicis:Jomytejod;

      public var leriju:Mocor;

      public var tygavor:Puvygy;

      public var stage:Stage;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.stage=this.view.stage;
         this.stage.addEventListener(KeyboardEvent.KEY_UP,this.sywihyhih);
         this.view.setup(this.model,this.mamecusetyw(),this.leriju);
         this.view.message.add(this.wabufofy);
         this.view.close.add(this.micane);
         this.dyrisicis.add(this.tavugu);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.message.remove(this.wabufofy);
         this.view.close.remove(this.micane);
         this.dyrisicis.remove(this.tavugu);
         this.stage.removeEventListener(KeyboardEvent.KEY_UP,this.sywihyhih);
         return;
      }

      private function micane() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dyrisicis.dispatch(false,"");
         this.leriju.juf();
         return;
      }

      private function wabufofy(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lakomar.dispatch(param1);
         this.dyrisicis.dispatch(false,"");
         return;
      }

      private function tavugu(param1:Boolean, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
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

      private function mamecusetyw() : TextField {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:TextField = this.byqiq.jotuvug();
         this.nodujijyw.apply(_loc1_,14,16777215,true);
         return _loc1_;
      }

      private function sywihyhih(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((this.view.visible)&&(this.stage.focus==null||(this.lipe())))
         {
            this.vebezaku(param1);
         }
         return;
      }

      private function lipe() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.stage.focus.parent==this.view)&&!(this.stage.focus==this.view);
      }

      private function vebezaku(param1:KeyboardEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.stopImmediatePropagation();
         var _loc2_:uint = param1.keyCode;
         if(_loc2_==this.tygavor.curykyt())
         {
            this.view.activate("/",true);
         }
         else
         {
            if(_loc2_==this.tygavor.focu())
            {
               this.view.activate(null,true);
            }
            else
            {
               if(_loc2_==this.tygavor.mapeba())
               {
                  this.view.activate("/g ",true);
               }
               else
               {
                  if(_loc2_==this.tygavor.cizasef())
                  {
                     this.view.activate("/tell "+this.leriju.vugireced()+" ",true);
                  }
               }
            }
         }
         return;
      }
   }
[/CLASS]
}