package wenono
{
   import tytojonib.Kyjefe;
   import micac.Ciqyl;
   import pusy.Mun;
   import com.company.assembleegameclient.objects.Player;


   public class Tib extends Kyjefe
   {
      public function Tib() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Worudo;

      public var fer:Ciqyl;

      public var hibufuryn:Mun;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hibufuryn.add(this.wyseg);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hibufuryn.add(this.wyseg);
         return;
      }

      private function wyseg(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.update(param1);
         return;
      }
   }

}