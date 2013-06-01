package rareja
{
[CLASS1350]   import tysenyzy.Zovisis;
   import nupuq.Gofapijy;
   import nupuq.Pufocipoh;
   import nupuq.Gifimi;
   import nupuq.Gyme;
   import nupuq.Pyfapobe;
   import gukite.Vifiveho;
   import flash.system.System;


   public final class Nyqem extends Zovisis
   {
      public function Nyqem() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var log:Gofapijy;

      public var pilepun:Pufocipoh;

      public var micuvydi:Gifimi;

      public var clear:Gyme;

      public var copy:Pyfapobe;

      public var view:Qawysodo;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.log.add(this.gok);
         this.pilepun.add(this.wajusic);
         this.micuvydi.add(this.rogityw);
         this.clear.add(this.nuqu);
         this.copy.add(this.gone);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.log.remove(this.gok);
         this.pilepun.remove(this.wajusic);
         this.micuvydi.remove(this.rogityw);
         this.clear.remove(this.nuqu);
         this.copy.remove(this.gone);
         return;
      }

      private function gok(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.log(param1);
         return;
      }

      private function wajusic(param1:Vifiveho) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.pilepun(param1);
         return;
      }

      private function rogityw(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.micuvydi(param1);
         return;
      }

      private function nuqu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.clear();
         return;
      }

      private function gone() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         System.setClipboard(this.view.kym());
         return;
      }
   }
[/CLASS]
}