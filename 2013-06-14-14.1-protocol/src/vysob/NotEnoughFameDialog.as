package vysob
{
   import flash.events.Event;
   import komi.Vibemod;


   public class NotEnoughFameDialog extends Dialog
   {
      public function NotEnoughFameDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(Vibemod.nuv,Vibemod.jiro,Vibemod.futoqywy,null,"/notEnoughFame");
         addEventListener(LEFT_BUTTON,this.wyrehaq);
         return;
      }

      public function wyrehaq(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         parent.removeChild(this);
         return;
      }
   }

}