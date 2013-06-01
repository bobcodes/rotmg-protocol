package ruf
{
[CLASS186]   import tysenyzy.Command;
   import kirofyny.Hehuf;
   import zozimuk.Zuresasy;
   import kuniv.Nogofado;
   import golac.PackageOfferDialog;


   public class Befyvalas extends Command
   {
      public function Befyvalas() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var rypin:Hehuf;

      public var wiq:Zuresasy;

      public var packageId:int;

      public var digodoca:Lal;

      override public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nogofado = null;
         if(this.wiq.cifog(this.packageId))
         {
            _loc1_=this.wiq.napewyz(this.packageId);
            this.rypin.dispatch(new PackageOfferDialog().setPackage(_loc1_));
         }
         else
         {
            this.digodoca.dispatch();
         }
         return;
      }
   }
[/CLASS]
}