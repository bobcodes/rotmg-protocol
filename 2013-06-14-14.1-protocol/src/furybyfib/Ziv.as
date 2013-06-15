package furybyfib
{
   import tytojonib.Kyjefe;
   import copano.Jofedofuq;
   import pusy.Mun;
   import com.company.assembleegameclient.objects.Player;


   public class Ziv extends Kyjefe
   {
      public function Ziv() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Jofedofuq;

      public var hibufuryn:Mun;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hibufuryn.add(this.wyseg);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hibufuryn.remove(this.wyseg);
         return;
      }

      private function wyseg(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.draw();
         return;
      }
   }

}