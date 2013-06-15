package pejycaj
{
   import tytojonib.Kyjefe;
   import cizagamym.Lebovas;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import flash.events.Event;


   public class Ryso extends Kyjefe
   {
      public function Ryso() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Mudosorug;

      public var closeDialogs:Lebovas;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.cozym(this.hoqijy());
         this.view.ridysole.add(this.wezu);
         return;
      }

      private function hoqijy() : BitmapData {
         return ObjectLibrary.getRedrawnTextureFromType(6546,80,true);
      }

      private function wezu(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.closeDialogs.dispatch();
         return;
      }
   }

}