package kynusa
{
   import qov.Command;
   import wegyluke.Hez;
   import zokece.Buquk;
   import damul.Qyfa;
   import liwaqa.PackageOfferDialog;


   public class Bywowy extends Command
   {
      public function Bywowy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var vujik:Hez;

      public var pitosad:Buquk;

      public var packageId:int;

      public var vara:Dawozi;

      override public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Qyfa = null;
         if(this.pitosad.hukim(this.packageId))
         {
            _loc1_=this.pitosad.jejisud(this.packageId);
            this.vujik.dispatch(new PackageOfferDialog().setPackage(_loc1_));
         }
         else
         {
            this.vara.dispatch();
         }
         return;
      }
   }

}