package wenono
{
   import tytojonib.Kyjefe;
   import waryp.Derofo;
   import jovurora.Divoceve;
   import pomujukir.Bemivu;


   public class Gumuk extends Kyjefe
   {
      public function Gumuk() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Derofo;

      public var servers:Divoceve;

      public var syfu:Bemivu;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.takalozy.add(this.wyhyzuzac);
         this.view.initialize(this.servers.cinudycu());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.takalozy.remove(this.wyhyzuzac);
         return;
      }

      private function wyhyzuzac() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.syfu.dispatch(new TitleView());
         return;
      }
   }

}