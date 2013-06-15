package havicokob
{
   import lemugo.Wokycuku;
   import pomujukir.Bemivu;
   import flash.display.Sprite;
   import gycu.Feliro;
   import vilova.Cetugev;
   import waryp.Sigaqo;
   import gycu.Begotyl;
   import gycu.Levoje;


   public class Caw extends Object
   {
      public function Caw() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var model:Wokycuku;

      public var syfu:Bemivu;

      public var view:Sprite;

      public var bilizaw:Feliro;

      public var zop:Cetugev;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.model.nyniti)
         {
            this.kalawone();
         }
         else
         {
            this.syfu.dispatch(this.view);
         }
         return;
      }

      private function kalawone() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.syfu.dispatch(new Sigaqo());
         var _loc1_:Begotyl = new Begotyl();
         _loc1_.add(this.zop);
         _loc1_.add(new Levoje(this.syfu,this.view));
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }
   }

}