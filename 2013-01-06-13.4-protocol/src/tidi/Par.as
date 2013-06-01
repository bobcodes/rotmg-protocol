package tidi
{
[CLASS498]   import tysenyzy.Zovisis;
   import vinirudel.Wukyva;
   import nylos.Kyk;
   import com.company.assembleegameclient.objects.Player;


   public class Par extends Zovisis
   {
      public function Par() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Qeno;

      public var fysufapav:Wukyva;

      public var fyz:Kyk;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fyz.add(this.cad);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fyz.add(this.cad);
         return;
      }

      private function cad(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.update(param1);
         return;
      }
   }
[/CLASS]
}