package zitofoty
{
[CLASS377]   import zajenevik.Tif;
   import leselo.Account;
   import rysuho.Loku;
   import jehihe.Kelycihi;
   import jehihe.Homynep;
   import zeva.Few;
   import gyjad.Jibaw;


   public class Huwag extends Object
   {
      public function Huwag() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var pyv:Tif;

      public var account:Account;

      public var data:XML;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pyv.map(Loku).paradi(this.lut());
         return;
      }

      private function lut() : Class {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.mylav()?Kelycihi:Homynep;
      }

      private function mylav() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.account is Few||this.account is Jibaw)&&this.data["UseExternalPayments"]==null||(Boolean(int(this.data["UseExternalPayments"])));
      }
   }
[/CLASS]
}