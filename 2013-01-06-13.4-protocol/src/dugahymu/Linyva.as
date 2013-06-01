package dugahymu
{
[CLASS520]   import tysenyzy.Zovisis;
   import nylos.Kyk;
   import tidi.Larebur;
   import com.company.assembleegameclient.objects.Player;
   import flash.events.MouseEvent;


   public class Linyva extends Zovisis
   {
      public function Linyva() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Hohu;

      public var fyz:Kyk;

      public var nopyb:Watygilar;

      public var judigan:Larebur;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.kyrajepi.add(this.dype);
         this.fyz.add(this.cad);
         this.judigan.add(this.pyzoqa);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.kyrajepi.remove(this.dype);
         this.fyz.remove(this.cad);
         return;
      }

      private function cad(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.draw(param1);
         return;
      }

      private function dype(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.view.nebe==Hohu.migiciw)
         {
            this.view.wigem();
            this.nopyb.dispatch(this.view);
         }
         return;
      }

      private function pyzoqa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.dygibenyz();
         return;
      }
   }
[/CLASS]
}