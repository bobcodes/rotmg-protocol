package bolyta
{
[CLASS1749]   import flash.display.Sprite;
   import tinava.Dab;
   import mejuny.Recij;
   import mejuny.Gab;
   import mejuny.Bavug;


   public class Div extends Sprite
   {
      public function Div() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addChild(Recij.fawug());
         this.vetyma=new Gab(this);
         this.sycahifoje=new Bavug(this);
         alpha=0;
         return;
      }

      public const mev:Dab = new Dab();

      public var vetyma:Pacezylej;

      public var sycahifoje:Pacezylej;

      public function play() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vetyma.civyq(this.qitirete);
         this.vetyma.start();
         return;
      }

      private function qitirete() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mev.dispatch();
         this.sycahifoje.start();
         return;
      }
   }
[/CLASS]
}