package jeroheta
{
   import pugem.Account;
   import cizagamym.Boquzojul;
   import flash.display.Sprite;
   import zekeqa.NewChooseNameFrame;
   import wenono.ChooseNameRegisterDialog;


   public class Datynuqe extends Object
   {
      public function Datynuqe() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var ridecy:Boquzojul;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = null;
         if(this.account.zuqic())
         {
            _loc1_=new NewChooseNameFrame();
         }
         else
         {
            _loc1_=new ChooseNameRegisterDialog();
         }
         this.ridecy.dispatch(_loc1_);
         return;
      }
   }

}