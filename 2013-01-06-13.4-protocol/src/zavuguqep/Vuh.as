package zavuguqep
{
[CLASS546]   import tysenyzy.Zovisis;
   import ferozosyf.Pele;
   import nylos.Kyk;
   import com.company.assembleegameclient.objects.Player;


   public class Vuh extends Zovisis
   {
      public function Vuh() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Pele;

      public var fyz:Kyk;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fyz.add(this.cad);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fyz.remove(this.cad);
         return;
      }

      private function cad(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.draw();
         return;
      }
   }
[/CLASS]
}