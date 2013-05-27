package vevurar
{
   import lazamipu.Radil;
   import lazamipu.Lamagocus;
   import raqu.Calogu;
   import befisemym.FameView;


   public class Lumul extends Object
   {
      public function Lumul() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var qocuseho:Radil;

      public var model:Lamagocus;

      public var zogytuso:Calogu;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.accountId=this.qocuseho.lyhiqumi();
         this.model.vugejuh=this.qocuseho.rohimofiq();
         this.zogytuso.dispatch(new FameView());
         return;
      }
   }

}