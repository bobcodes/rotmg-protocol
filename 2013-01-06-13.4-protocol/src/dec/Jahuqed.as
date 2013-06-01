package dec
{
[CLASS1827]   import nonyna.Frame;
   import nonyna.Cyb;
   import flash.events.MouseEvent;
   import flash.events.Event;


   public class Jahuqed extends Frame
   {
      public function Jahuqed(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super("Tile properties","Cancel","Save",null);
         this.jot=new Cyb("Object Name",false);
         if(param1!=null)
         {
            this.jot.inputText_.text=param1;
         }
         sirutugu(this.jot);
         mycip.addEventListener(MouseEvent.CLICK,this.onCancel);
         mibyruji.addEventListener(MouseEvent.CLICK,this.kur);
         return;
      }

      public var jot:Cyb;

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Event.CANCEL));
         return;
      }

      private function kur(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }
   }
[/CLASS]
}