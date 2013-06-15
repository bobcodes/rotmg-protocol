package fuqefo
{
   import tygole.Govututa;
   import pomujukir.Wizuwub;
   import pomujukir.Kovi;
   import waryp.CharacterSelectionAndNewsScreen;
   import wenono.TitleView;


   public class Kotyzow extends Object
   {
      public function Kotyzow() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var model:Govututa;

      public var luzej:Wizuwub;

      public var syfu:Kovi;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.model.buhizo())
         {
            this.lataki();
         }
         else
         {
            this.qipy();
         }
         return;
      }

      private function lataki() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.qyhynen();
         this.luzej.dispatch();
         this.syfu.dispatch(new CharacterSelectionAndNewsScreen());
         return;
      }

      private function qipy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.syfu.dispatch(new TitleView());
         return;
      }
   }

}