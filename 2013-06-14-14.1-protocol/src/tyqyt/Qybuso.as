package tyqyt
{
   import kaw.Console;
   import ranu.Jiripusi;


   public final class Qybuso extends Object
   {
      public function Qybuso() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var console:Console;

      public var log:Jiripusi;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = "  "+this.console.piwabal().join("\r  ");
         this.log.dispatch(_loc1_);
         return;
      }
   }

}