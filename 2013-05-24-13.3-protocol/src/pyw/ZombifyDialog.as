package pyw
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import nas.Dialog;
   import flash.events.Event;


   public class ZombifyDialog extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function ZombifyDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.kycusoqum=new Dialog(TITLE,cyreniqyq,cecy,null,null);
         this.kycusoqum.bycupoh=-100;
         this.kycusoqum.jykegabi=200;
         this.kycusoqum.addEventListener(Dialog.LEFT_BUTTON,this.onButtonClick);
         addChild(this.kycusoqum);
         return;
      }

      public static const TITLE:String = "ZombifyDialog.title";

      public static const cyreniqyq:String = "ZombifyDialog.body";

      public static const cecy:String = "ZombifyDialog.button";

      public const closed:Hugyqufyq = new Hugyqufyq();

      private var kycusoqum:Dialog;

      private function onButtonClick(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.closed.dispatch();
         return;
      }
   }

}