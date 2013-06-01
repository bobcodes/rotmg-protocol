package nafa
{
   import gib.Frame;
   import gib.Wejat;
   import flash.events.MouseEvent;
   import flash.events.Event;


   public class Mawyfybil extends Frame
   {
      public function Mawyfybil(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super("Tile properties","Cancel","Save",null);
         this.jetajy=new Wejat("Object Name",false);
         if(param1!=null)
         {
            this.jetajy.inputText_.text=param1;
         }
         jupywota(this.jetajy);
         lodab.addEventListener(MouseEvent.CLICK,this.onCancel);
         dal.addEventListener(MouseEvent.CLICK,this.zun);
         return;
      }

      public var jetajy:Wejat;

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Event.CANCEL));
         return;
      }

      private function zun(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }
   }

}