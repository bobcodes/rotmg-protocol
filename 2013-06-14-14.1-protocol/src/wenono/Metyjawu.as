package wenono
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import vysob.Dialog;
   import qykifavol.Rulavowaz;


   public class Metyjawu extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Metyjawu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.qogirahi();
         this.qonugile();
         return;
      }

      private static const TEXT:String = "In order to have more than one character slot, you must be a registered user.";

      private static const TITLE:String = "Not Registered";

      private static const CANCEL:String = "Cancel";

      private static const pizym:String = "Register";

      private static const mymocuf:String = "/charSlotNeedRegister";

      public var cancel:Qanyduk;

      public var register:Qanyduk;

      private var pevojal:Dialog;

      private function qogirahi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pevojal=new Dialog(TITLE,TEXT,CANCEL,pizym,mymocuf);
         addChild(this.pevojal);
         return;
      }

      private function qonugile() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cancel=new Rulavowaz(this.pevojal,Dialog.LEFT_BUTTON);
         this.register=new Rulavowaz(this.pevojal,Dialog.RIGHT_BUTTON);
         return;
      }
   }

}