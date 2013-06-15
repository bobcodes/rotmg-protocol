package nytifawy
{
   import tytojonib.Kyjefe;
   import pumoc.Zesihag;
   import komi.Qog;
   import komi.Donok;
   import tumi.Gimew;
   import tumi.Lukud;
   import pumoc.Gigo;
   import pumoc.Tejijuw;
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;


   public class Dit extends Kyjefe
   {
      public function Dit() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Kyhubydav;

      public var model:Zesihag;

      public var nywahoru:Qog;

      public var ficedez:Donok;

      public var rolutyho:Gimew;

      public var dopypim:Lukud;

      public var gagapas:Gigo;

      public var vatip:Tejijuw;

      public var stage:Stage;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.stage=this.view.stage;
         this.stage.addEventListener(KeyboardEvent.KEY_UP,this.luw);
         this.view.setup(this.model,this.movihemov());
         this.view.message.add(this.roga);
         this.view.close.add(this.fikepyti);
         this.dopypim.add(this.huhu);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.message.remove(this.roga);
         this.view.close.remove(this.fikepyti);
         this.dopypim.remove(this.huhu);
         this.stage.removeEventListener(KeyboardEvent.KEY_UP,this.luw);
         return;
      }

      private function fikepyti() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dopypim.dispatch(false,"");
         this.gagapas.pegupejo();
         return;
      }

      private function roga(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rolutyho.dispatch(param1);
         this.dopypim.dispatch(false,"");
         return;
      }

      private function huhu(param1:Boolean, param2:String) : void {
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
         if(!param1)
         {
            this.gagapas.pegupejo();
         }
         return;
      }

      private function movihemov() : TextField {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:TextField = this.nywahoru.mawebywy();
         this.ficedez.apply(_loc1_,14,16777215,true);
         return _loc1_;
      }

      private function luw(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if((this.view.visible)&&(param1.keyCode==this.vatip.hezi()||this.stage.focus==null||(this.gyca())))
         {
            this.tat(param1);
         }
         return;
      }

      private function gyca() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.stage.focus.parent==this.view)&&!(this.stage.focus==this.view);
      }

      private function tat(param1:KeyboardEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.stopImmediatePropagation();
         var _loc2_:uint = param1.keyCode;
         if(_loc2_==this.vatip.mofirabi())
         {
            this.view.activate("/",true);
         }
         else
         {
            if(_loc2_==this.vatip.vokega())
            {
               this.view.activate(null,true);
            }
            else
            {
               if(_loc2_==this.vatip.jejobiga())
               {
                  this.view.activate("/g ",true);
               }
               else
               {
                  if(_loc2_==this.vatip.hezi())
                  {
                     this.megyqi();
                  }
               }
            }
         }
         return;
      }

      private function megyqi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.view.syde())
         {
            this.view.activate("/tell "+this.gagapas.bumubat()+" ",true);
         }
         return;
      }
   }

}