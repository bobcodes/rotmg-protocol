package cejyva
{
[CLASS649]   import flash.events.Event;


   public class Qak extends Dialog
   {
      public function Qak(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
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
[/CLASS]
}