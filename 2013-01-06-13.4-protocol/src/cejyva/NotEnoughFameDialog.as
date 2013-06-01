package cejyva
{
[CLASS1445]   import flash.events.Event;
   import haqakel.Kefyfa;


   public class NotEnoughFameDialog extends Dialog
   {
      public function NotEnoughFameDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(Kefyfa.merujyjiw,Kefyfa.jipynaqub,Kefyfa.zositino,null,"/notEnoughFame");
         addEventListener(LEFT_BUTTON,this.wyfizytu);
         return;
      }

      public function wyfizytu(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         parent.removeChild(this);
         return;
      }
   }
[/CLASS]
}