package hupad
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import vysob.Dialog;
   import flash.events.Event;


   public class ZombifyDialog extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function ZombifyDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.pevojal=new Dialog(TITLE,maki,syn,null,null);
         this.pevojal.hitysifeb=-100;
         this.pevojal.bideb=200;
         this.pevojal.addEventListener(Dialog.LEFT_BUTTON,this.onButtonClick);
         addChild(this.pevojal);
         return;
      }

      public static const TITLE:String = "ZombifyDialog.title";

      public static const maki:String = "ZombifyDialog.body";

      public static const syn:String = "ZombifyDialog.button";

      public const closed:Qanyduk = new Qanyduk();

      private var pevojal:Dialog;

      private function onButtonClick(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.closed.dispatch();
         return;
      }
   }

}