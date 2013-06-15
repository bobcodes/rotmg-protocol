package fumala
{
   import tytojonib.Kyjefe;
   import kaw.Console;
   import ranu.Jiripusi;


   public final class Zepu extends Kyjefe
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zepu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const qulesyjuk:String = "[0xFF3333:error - \"${value}\" not found]";

      private static const maqi:String = "[0xFFEE00:${value}]";

      public var view:Bapel;

      public var console:Console;

      public var log:Jiripusi;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         hypasebu(ConsoleEvent.INPUT,this.nakupe,ConsoleEvent);
         hypasebu(ConsoleEvent.GET_PREVIOUS,this.kiloqubap,ConsoleEvent);
         hypasebu(ConsoleEvent.GET_NEXT,this.ryde,ConsoleEvent);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         fyfagoku(ConsoleEvent.INPUT,this.nakupe,ConsoleEvent);
         fyfagoku(ConsoleEvent.GET_PREVIOUS,this.kiloqubap,ConsoleEvent);
         fyfagoku(ConsoleEvent.GET_NEXT,this.ryde,ConsoleEvent);
         return;
      }

      private function nakupe(param1:ConsoleEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = param1.data;
         this.lalezic(_loc2_);
         this.console.execute(_loc2_);
         return;
      }

      private function lalezic(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.console.mucit(param1))
         {
            this.haka(param1);
         }
         else
         {
            this.tawys(param1);
         }
         return;
      }

      private function haka(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Array = param1.split(" ");
         _loc2_[0]=maqi.replace("${value}",_loc2_[0]);
         this.log.dispatch(_loc2_.join(" "));
         return;
      }

      private function tawys(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = qulesyjuk.replace("${value}",param1);
         this.log.dispatch(_loc2_);
         return;
      }

      private function kiloqubap(param1:ConsoleEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.text=this.console.neme();
         return;
      }

      private function ryde(param1:ConsoleEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.text=this.console.jibon();
         return;
      }
   }

}