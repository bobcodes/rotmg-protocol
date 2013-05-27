package nas
{
   import flash.events.Event;


   public class Vyha extends Dialog
   {
      public function Vyha(param1:String) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super("Debug",param1,"OK",null,null);
         addEventListener(Dialog.LEFT_BUTTON,this.onDialogComplete);
         return;
      }

      private function onDialogComplete(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.parent!=null)
         {
            this.parent.removeChild(this);
         }
         return;
      }
   }

}