package caqu
{
[CLASS164]   import tysenyzy.Zovisis;
   import dyvelo.Vewyr;
   import dage.Fakibis;
   import foliverad.Popefy;
   import tafosy.Dunol;
   import tafosy.Rop;
   import tafosy.Soka;
   import dutes.Vavaq;
   import dyvelo.Timespan;
   import dyvelo.Tobyd;


   public class Cuta extends Zovisis
   {
      public function Cuta() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Jujadi;

      public var model:Vewyr;

      public var gusor:Fakibis;

      public var qynij:Popefy;

      public var netar:Dunol;

      public var update:Rop;

      public var exit:Soka;

      public var pukyso:Vavaq;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pukyso.dispatch("/legendsScreen");
         this.view.close.add(this.pikymasa);
         this.view.zedinit.add(this.tytowig);
         this.view.siqucofuh.add(this.syfeba);
         this.update.add(this.tizudijin);
         this.tytowig(this.model.qase());
         return;
      }

      private function pikymasa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.exit.dispatch();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.close.remove(this.pikymasa);
         this.view.zedinit.remove(this.tytowig);
         this.view.siqucofuh.remove(this.syfeba);
         this.update.remove(this.tizudijin);
         this.gusor.husapu();
         this.model.clear();
         return;
      }

      private function tytowig(param1:Timespan) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.model.jyd(param1);
         if(this.model.zak())
         {
            this.tizudijin();
         }
         else
         {
            this.kyqelywa();
         }
         return;
      }

      private function kyqelywa() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.clear();
         this.view.huqiwod();
         this.netar.dispatch(this.model.qase());
         return;
      }

      private function tizudijin(param1:Timespan=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var param1:Timespan = (param1)||(this.model.qase());
         this.view.hacil();
         this.view.sojomube(param1,this.model.fabineha());
         return;
      }

      private function syfeba(param1:Tobyd) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qynij.dispatch(param1);
         return;
      }
   }
[/CLASS]
}