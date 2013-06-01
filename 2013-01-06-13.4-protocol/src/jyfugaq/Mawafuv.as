package jyfugaq
{
[CLASS1380]   import syfuqycy.Gyz;
   import vofepimy.Rucikezab;
   import tizozowof.Fedyl;
   import leselo.Account;
   import syfuqycy.Motumeq;


   public class Mawafuv extends Gyz
   {
      public function Mawafuv() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var login:Rucikezab;

      public var lowemycu:Fedyl;

      public var account:Account;

      public var local:Pesuqarut;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.lowemycu.isGuest())
         {
            this.miduby();
         }
         else
         {
            this.gaci();
         }
         return;
      }

      private function gaci() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.login.gegyco.addOnce(this.zynopimam);
         this.login.start();
         return;
      }

      private function zynopimam(param1:Motumeq, param2:Boolean, param3:String="") : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         pylebodyq(true);
         return;
      }

      private function miduby() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.account.fuv(this.local.nut(),"");
         pylebodyq(true);
         return;
      }
   }
[/CLASS]
}