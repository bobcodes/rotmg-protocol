package rareja
{
[CLASS1354]   import tysenyzy.Zovisis;
   import gukite.Console;
   import nupuq.Gofapijy;


   public final class Qycu extends Zovisis
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Qycu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const zyqywov:String = "[0xFF3333:error - \"${value}\" not found]";

      private static const mucureryw:String = "[0xFFEE00:${value}]";

      public var view:Visybe;

      public var console:Console;

      public var log:Gofapijy;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         jew(ConsoleEvent.INPUT,this.puhehu,ConsoleEvent);
         jew(ConsoleEvent.GET_PREVIOUS,this.naware,ConsoleEvent);
         jew(ConsoleEvent.GET_NEXT,this.hyfav,ConsoleEvent);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         mojuc(ConsoleEvent.INPUT,this.puhehu,ConsoleEvent);
         mojuc(ConsoleEvent.GET_PREVIOUS,this.naware,ConsoleEvent);
         mojuc(ConsoleEvent.GET_NEXT,this.hyfav,ConsoleEvent);
         return;
      }

      private function puhehu(param1:ConsoleEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = param1.data;
         this.geqi(_loc2_);
         this.console.execute(_loc2_);
         return;
      }

      private function geqi(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.console.wobyli(param1))
         {
            this.bavu(param1);
         }
         else
         {
            this.qohobafew(param1);
         }
         return;
      }

      private function bavu(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = param1.split(" ");
         _loc2_[0]=mucureryw.replace("${value}",_loc2_[0]);
         this.log.dispatch(_loc2_.join(" "));
         return;
      }

      private function qohobafew(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = zyqywov.replace("${value}",param1);
         this.log.dispatch(_loc2_);
         return;
      }

      private function naware(param1:ConsoleEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.text=this.console.fik();
         return;
      }

      private function hyfav(param1:ConsoleEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.text=this.console.negezi();
         return;
      }
   }
[/CLASS]
}