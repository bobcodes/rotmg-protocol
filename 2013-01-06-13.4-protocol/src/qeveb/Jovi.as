package qeveb
{
[CLASS450]   import tysenyzy.Zovisis;
   import tidi.Bamahucac;
   import com.company.assembleegameclient.util.Vureriju;
   import flash.events.MouseEvent;


   public class Jovi extends Zovisis
   {
      public function Jovi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var losaveq:Bamahucac;

      public var kebycos:Vureriju;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.losaveq.addEventListener(MouseEvent.MOUSE_UP,this.jefazus);
         return;
      }

      private function jefazus(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kebycos.setFocus(null);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.losaveq.removeEventListener(MouseEvent.MOUSE_UP,this.jefazus);
         return;
      }
   }
[/CLASS]
}