package jeroheta
{
   import pomujukir.Bemivu;
   import civino.Posobew;
   import wenono.TitleView;


   public class Mabujin extends Object
   {
      public function Mabujin() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var syfu:Bemivu;

      public var vuf:Posobew;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.syfu.dispatch(new TitleView());
         this.vuf.dispatch();
         return;
      }
   }

}