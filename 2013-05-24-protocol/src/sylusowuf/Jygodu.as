package sylusowuf
{
   import qov.Kalefu;
   import nago.Keqis;
   import nago.Visyw;
   import nago.Mopodig;
   import nago.Meva;
   import nago.Kukodyba;
   import rosebo.Ruwatum;
   import flash.system.System;


   public final class Jygodu extends Kalefu
   {
      public function Jygodu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var log:Keqis;

      public var lihyqi:Visyw;

      public var vyqane:Mopodig;

      public var clear:Meva;

      public var copy:Kukodyba;

      public var view:Gecafehu;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.log.add(this.pytakyj);
         this.lihyqi.add(this.jowos);
         this.vyqane.add(this.cyseripy);
         this.clear.add(this.viwa);
         this.copy.add(this.pogef);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.log.remove(this.pytakyj);
         this.lihyqi.remove(this.jowos);
         this.vyqane.remove(this.cyseripy);
         this.clear.remove(this.viwa);
         this.copy.remove(this.pogef);
         return;
      }

      private function pytakyj(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.log(param1);
         return;
      }

      private function jowos(param1:Ruwatum) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.lihyqi(param1);
         return;
      }

      private function cyseripy(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.vyqane(param1);
         return;
      }

      private function viwa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.clear();
         return;
      }

      private function pogef() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         System.setClipboard(this.view.geheza());
         return;
      }
   }

}