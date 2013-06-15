package racitagy
{
   import tytojonib.Kyjefe;
   import fanij.Namejaja;
   import haj.Sevuvomyn;
   import fanij.Mitat;
   import cizagamym.Dynydo;
   import fanij.Cun;


   public class Watom extends Kyjefe
   {
      public function Watom() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:PetPicker;

      public var model:Namejaja;

      public var resemuci:Sevuvomyn;

      public var hibuc:Mitat;

      public var ridecy:Dynydo;

      override public function initialize() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.qebe(this.model.jahu());
         var _loc1_:Cun = this.hibuc.selected==Mitat.LEFT?this.hibuc.ticowob:this.hibuc.baluq;
         if(_loc1_)
         {
            this.view.kybi(_loc1_);
         }
         this.view.valit.addOnce(this.vydaf);
         return;
      }

      private function vydaf(param1:Cun) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.hibuc.selected==Mitat.LEFT)
         {
            this.hibuc.baluq=param1;
         }
         else
         {
            this.hibuc.ticowob=param1;
         }
         this.ridecy.dispatch(new this.hibuc.caller());
         return;
      }
   }

}