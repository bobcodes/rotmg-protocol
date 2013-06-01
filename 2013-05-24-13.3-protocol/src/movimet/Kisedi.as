package movimet
{
   import qov.Kalefu;
   import com.company.ui.Sytubyvyg;
   import heko.Kup;


   public class Kisedi extends Kalefu
   {
      public function Kisedi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Sytubyvyg;

      public var model:Kup;

      override public function initialize() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = this.model.gibivi().getName();
         this.view.cup(_loc1_);
         return;
      }
   }

}