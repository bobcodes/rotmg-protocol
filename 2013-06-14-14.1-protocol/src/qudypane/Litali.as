package qudypane
{
   import lyhek.Cumezyl;
   import lyhek.Kumiri;
   import pomujukir.Bemivu;
   import fumyteris.FameView;


   public class Litali extends Object
   {
      public function Litali() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var tutobasu:Cumezyl;

      public var model:Kumiri;

      public var syfu:Bemivu;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.accountId=this.tutobasu.sosimu();
         this.model.medolaru=this.tutobasu.gar();
         this.syfu.dispatch(new FameView());
         return;
      }
   }

}