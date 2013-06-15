package havicokob
{
   import teticurym.Sewopacyn;
   import pugem.Account;
   import civino.Duposid;
   import pury.Qilumiq;
   import pury.Has;
   import myh.Suba;
   import risic.Jyr;


   public class Zawu extends Object
   {
      public function Zawu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var pomih:Sewopacyn;

      public var account:Account;

      public var data:XML;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pomih.map(Duposid).sakytyf(this.redyl());
         return;
      }

      private function redyl() : Class {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.pykupym()?Qilumiq:Has;
      }

      private function pykupym() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.account is Suba||this.account is Jyr)&&this.data["UseExternalPayments"]==null||(Boolean(int(this.data["UseExternalPayments"])));
      }
   }

}