package kesoji
{
   import dopumitud.Suquzujow;
   import gag.Gawu;
   import sasacen.Kozivole;
   import gag.Poh;
   import gag.Myzawob;


   public class Wavik extends Object
   {
      public function Wavik() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var login:Suquzujow;

      public var rurusedi:Gawu;

      public var refresh:Kozivole;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Poh = new Poh(this.login);
         _loc1_.nunubepyk(new Myzawob(this.refresh));
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }
   }

}