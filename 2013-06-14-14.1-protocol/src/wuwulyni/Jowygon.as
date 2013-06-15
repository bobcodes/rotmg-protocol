package wuwulyni
{
   import gycu.Siv;
   import vilova.Baf;
   import taruco.Hosoqoqy;
   import pugem.Account;
   import gycu.Cyqe;


   public class Jowygon extends Siv
   {
      public function Jowygon() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var login:Baf;

      public var ciqocu:Hosoqoqy;

      public var account:Account;

      public var local:Wyzazeqi;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.ciqocu.isGuest())
         {
            this.kileje();
         }
         else
         {
            this.vys();
         }
         return;
      }

      private function vys() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.login.byqato.addOnce(this.vocuruwy);
         this.login.start();
         return;
      }

      private function vocuruwy(param1:Cyqe, param2:Boolean, param3:String="") : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         dom(true);
         return;
      }

      private function kileje() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.account.sapihaj(this.local.tufew(),"");
         dom(true);
         return;
      }
   }

}