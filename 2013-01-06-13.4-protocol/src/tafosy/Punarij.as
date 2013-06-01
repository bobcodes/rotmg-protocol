package tafosy
{
[CLASS162]   import dage.Fakibis;
   import dutes.Luzuqo;
   import dutes.Vow;
   import qilarag.CharacterSelectionAndNewsScreen;
   import tidi.TitleView;


   public class Punarij extends Object
   {
      public function Punarij() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var model:Fakibis;

      public var bejony:Luzuqo;

      public var cucec:Vow;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.model.wahirupom())
         {
            this.wifup();
         }
         else
         {
            this.dymopiwyg();
         }
         return;
      }

      private function wifup() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.husapu();
         this.bejony.dispatch();
         this.cucec.dispatch(new CharacterSelectionAndNewsScreen());
         return;
      }

      private function dymopiwyg() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cucec.dispatch(new TitleView());
         return;
      }
   }
[/CLASS]
}