package jykolu
{
[CLASS444]   import leselo.Account;
   import kirofyny.Hehuf;
   import flash.display.Sprite;
   import nonyna.NewChooseNameFrame;
   import tidi.ChooseNameRegisterDialog;


   public class Qokab extends Object
   {
      public function Qokab() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var lyhog:Hehuf;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = null;
         if(this.account.tuq())
         {
            _loc1_=new NewChooseNameFrame();
         }
         else
         {
            _loc1_=new ChooseNameRegisterDialog();
         }
         this.lyhog.dispatch(_loc1_);
         return;
      }
   }
[/CLASS]
}