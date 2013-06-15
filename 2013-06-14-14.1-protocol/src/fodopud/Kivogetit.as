package fodopud
{
   import tytojonib.Command;
   import cizagamym.Boquzojul;
   import car.Levoge;
   import wavybyjec.Sucy;
   import tilo.PackageOfferDialog;


   public class Kivogetit extends Command
   {
      public function Kivogetit() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var jipus:Boquzojul;

      public var nuvet:Levoge;

      public var packageId:int;

      public var mitinor:Hiwut;

      override public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sucy = null;
         if(this.nuvet.wuwiv(this.packageId))
         {
            _loc1_=this.nuvet.deli(this.packageId);
            this.jipus.dispatch(new PackageOfferDialog().setPackage(_loc1_));
         }
         else
         {
            this.mitinor.dispatch();
         }
         return;
      }
   }

}