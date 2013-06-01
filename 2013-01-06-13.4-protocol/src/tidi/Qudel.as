package tidi
{
[CLASS458]   import flash.display.Sprite;
   import tinava.Dab;
   import cejyva.Dialog;
   import zehus.Kelapu;


   public class Qudel extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Qudel() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.biw();
         this.napocys();
         return;
      }

      private static const TEXT:String = "In order to have more than one character slot, you must be a registered user.";

      private static const TITLE:String = "Not Registered";

      private static const CANCEL:String = "Cancel";

      private static const dyqefe:String = "Register";

      private static const dyz:String = "/charSlotNeedRegister";

      public var cancel:Dab;

      public var register:Dab;

      private var vit:Dialog;

      private function biw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vit=new Dialog(TITLE,TEXT,CANCEL,dyqefe,dyz);
         addChild(this.vit);
         return;
      }

      private function napocys() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cancel=new Kelapu(this.vit,Dialog.LEFT_BUTTON);
         this.register=new Kelapu(this.vit,Dialog.RIGHT_BUTTON);
         return;
      }
   }
[/CLASS]
}