package bocak
{
[CLASS284]   import tubovetyc.Command;
   import kirofyny.Hehuf;
   import sanijijiz.Savututil;
   import pogefeqeh.Wahovy;
   import bolyta.EvolveDialog;


   public class Gicenaga extends Command
   {
      public function Gicenaga() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var lyhog:Hehuf;

      public var qyrobumaw:Savututil;

      public var viqelo:Wahovy;

      override public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:EvolveDialog = this.viqelo.getInstance(EvolveDialog);
         this.lyhog.dispatch(_loc1_);
         _loc1_.lyryq.hiz(this.qyrobumaw);
         return;
      }
   }
[/CLASS]
}