package medub
{
   import raqu.Calogu;
   import likikul.Fop;
   import komawowag.Becepog;
   import sakugyt.Sezozidyt;
   import nitotohyk.Jubofylof;


   public class Qywyceri extends Object
   {
      public function Qywyceri() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var zogytuso:Calogu;

      public var domain:Fop;

      public var qiqely:Becepog;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.domain.diwur())
         {
            this.fyfibivaq();
         }
         else
         {
            this.dotabyter();
         }
         return;
      }

      private function fyfibivaq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zogytuso.dispatch(new Sezozidyt());
         return;
      }

      private function dotabyter() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qiqely.debug("bad domain, deny");
         this.zogytuso.dispatch(new Jubofylof());
         return;
      }
   }

}