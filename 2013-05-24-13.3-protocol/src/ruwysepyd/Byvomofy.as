package ruwysepyd
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import nas.Dialog;
   import gyzesuqu.Zojygese;


   public class Byvomofy extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Byvomofy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.detuloca();
         this.bige();
         return;
      }

      private static const TEXT:String = "In order to have more than one character slot, you must be a registered user.";

      private static const TITLE:String = "Not Registered";

      private static const CANCEL:String = "Cancel";

      private static const ninyfoku:String = "Register";

      private static const ziboti:String = "/charSlotNeedRegister";

      public var cancel:Hugyqufyq;

      public var register:Hugyqufyq;

      private var kycusoqum:Dialog;

      private function detuloca() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kycusoqum=new Dialog(TITLE,TEXT,CANCEL,ninyfoku,ziboti);
         addChild(this.kycusoqum);
         return;
      }

      private function bige() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cancel=new Zojygese(this.kycusoqum,Dialog.LEFT_BUTTON);
         this.register=new Zojygese(this.kycusoqum,Dialog.RIGHT_BUTTON);
         return;
      }
   }

}