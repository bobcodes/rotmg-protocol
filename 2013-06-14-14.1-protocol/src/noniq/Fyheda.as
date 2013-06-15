package noniq
{
   import zekeqa.Frame;
   import zekeqa.Pedug;
   import flash.events.MouseEvent;
   import flash.events.Event;


   public class Fyheda extends Frame
   {
      public function Fyheda(param1:String) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super("Tile properties","Cancel","Save",null);
         this.mavaw=new Pedug("Object Name",false);
         if(param1!=null)
         {
            this.mavaw.inputText_.text=param1;
         }
         gozunigyl(this.mavaw);
         vuz.addEventListener(MouseEvent.CLICK,this.onCancel);
         nuwido.addEventListener(MouseEvent.CLICK,this.vum);
         return;
      }

      public var mavaw:Pedug;

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(Event.CANCEL));
         return;
      }

      private function vum(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }
   }

}