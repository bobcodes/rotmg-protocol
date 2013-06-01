package sylusowuf
{
   import qov.Kalefu;
   import rosebo.Console;
   import nago.Keqis;


   public final class Jyhi extends Kalefu
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Jyhi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const pydova:String = "[0xFF3333:error - \"${value}\" not found]";

      private static const piqykycyd:String = "[0xFFEE00:${value}]";

      public var view:Fiqemeqat;

      public var console:Console;

      public var log:Keqis;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         include(ConsoleEvent.INPUT,this.vov,ConsoleEvent);
         include(ConsoleEvent.GET_PREVIOUS,this.terotoh,ConsoleEvent);
         include(ConsoleEvent.GET_NEXT,this.wus,ConsoleEvent);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         diwu(ConsoleEvent.INPUT,this.vov,ConsoleEvent);
         diwu(ConsoleEvent.GET_PREVIOUS,this.terotoh,ConsoleEvent);
         diwu(ConsoleEvent.GET_NEXT,this.wus,ConsoleEvent);
         return;
      }

      private function vov(param1:ConsoleEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = param1.data;
         this.naqyg(_loc2_);
         this.console.execute(_loc2_);
         return;
      }

      private function naqyg(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.console.wuhow(param1))
         {
            this.raz(param1);
         }
         else
         {
            this.lafuhoc(param1);
         }
         return;
      }

      private function raz(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = param1.split(" ");
         _loc2_[0]=piqykycyd.replace("${value}",_loc2_[0]);
         this.log.dispatch(_loc2_.join(" "));
         return;
      }

      private function lafuhoc(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = pydova.replace("${value}",param1);
         this.log.dispatch(_loc2_);
         return;
      }

      private function terotoh(param1:ConsoleEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.text=this.console.cyhiraz();
         return;
      }

      private function wus(param1:ConsoleEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.text=this.console.vilawipo();
         return;
      }
   }

}