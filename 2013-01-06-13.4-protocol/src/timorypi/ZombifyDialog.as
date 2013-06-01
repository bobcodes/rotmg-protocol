package timorypi
{
[CLASS156]   import flash.display.Sprite;
   import tinava.Dab;
   import cejyva.Dialog;
   import flash.events.Event;


   public class ZombifyDialog extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function ZombifyDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.vit=new Dialog(TITLE,wapylym,jamo,null,null);
         this.vit.bage=-100;
         this.vit.fupefub=200;
         this.vit.addEventListener(Dialog.LEFT_BUTTON,this.onButtonClick);
         addChild(this.vit);
         return;
      }

      public static const TITLE:String = "ZombifyDialog.title";

      public static const wapylym:String = "ZombifyDialog.body";

      public static const jamo:String = "ZombifyDialog.button";

      public const closed:Dab = new Dab();

      private var vit:Dialog;

      private function onButtonClick(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.closed.dispatch();
         return;
      }
   }
[/CLASS]
}