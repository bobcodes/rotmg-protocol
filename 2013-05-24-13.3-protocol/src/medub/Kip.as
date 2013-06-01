package medub
{
   import aaa.rotmg.account.Account;
   import wegyluke.Hez;
   import flash.display.Sprite;
   import gib.NewChooseNameFrame;
   import ruwysepyd.ChooseNameRegisterDialog;


   public class Kip extends Object
   {
      public function Kip() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var naval:Hez;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sprite = null;
         if(this.account.bugi())
         {
            _loc1_=new NewChooseNameFrame();
         }
         else
         {
            _loc1_=new ChooseNameRegisterDialog();
         }
         this.naval.dispatch(_loc1_);
         return;
      }
   }

}