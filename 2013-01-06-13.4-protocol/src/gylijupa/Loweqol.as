package gylijupa
{
[CLASS405]   import tysenyzy.Zovisis;
   import wyzoz.Fasud;
   import koqeko.Vona;
   import mozacyqu.Jetim;
   import dutes.Sycanetal;
   import tidi.TitleView;


   public class Loweqol extends Zovisis
   {
      public function Loweqol() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var myticuleg:Fasud;

      public var pawale:Vona;

      public var myra:Jetim;

      public var view:Cewimeso;

      public var cucec:Sycanetal;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.liky(this.pawale.fod());
         this.view.setSelected(this.pawale.cuferoju(this.pawale.bebukir()));
         this.view.kewuhokag.add(this.vuny);
         this.view.back.add(this.puwalo);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.kewuhokag.remove(this.vuny);
         this.view.back.remove(this.puwalo);
         return;
      }

      private function puwalo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cucec.dispatch(new TitleView());
         return;
      }

      private function vuny(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.myra.dispatch(this.pawale.fudav(param1));
         return;
      }
   }
[/CLASS]
}