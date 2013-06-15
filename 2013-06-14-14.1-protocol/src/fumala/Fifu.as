package fumala
{
   import tytojonib.Kyjefe;
   import ranu.Jiripusi;
   import ranu.Mefodu;
   import ranu.Pejo;
   import ranu.Fubyf;
   import ranu.Tihun;
   import kaw.Dyqa;
   import flash.system.System;


   public final class Fifu extends Kyjefe
   {
      public function Fifu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var log:Jiripusi;

      public var fujaniqiv:Mefodu;

      public var fysi:Pejo;

      public var clear:Fubyf;

      public var copy:Tihun;

      public var view:Walemin;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.log.add(this.logenama);
         this.fujaniqiv.add(this.cuf);
         this.fysi.add(this.dozecu);
         this.clear.add(this.hyti);
         this.copy.add(this.gaceli);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.log.remove(this.logenama);
         this.fujaniqiv.remove(this.cuf);
         this.fysi.remove(this.dozecu);
         this.clear.remove(this.hyti);
         this.copy.remove(this.gaceli);
         return;
      }

      private function logenama(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.log(param1);
         return;
      }

      private function cuf(param1:Dyqa) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.fujaniqiv(param1);
         return;
      }

      private function dozecu(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.fysi(param1);
         return;
      }

      private function hyti() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.clear();
         return;
      }

      private function gaceli() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         System.setClipboard(this.view.hat());
         return;
      }
   }

}