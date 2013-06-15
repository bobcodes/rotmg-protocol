package hivysif
{
   import tytojonib.Kyjefe;
   import com.company.ui.Vovoj;
   import komi.Donok;


   public class Jej extends Kyjefe
   {
      public function Jej() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Vovoj;

      public var model:Donok;

      override public function initialize() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = this.model.jawiqaheq().getName();
         this.view.winyfa(_loc1_);
         return;
      }
   }

}