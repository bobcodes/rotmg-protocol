package zec
{
[CLASS964]   import flash.display.Sprite;
   import pudev.Capitu;
   import totuhare.Zufi;
   import tidi.Dak;
   import kozaligov.Bapipe;


   public class Quqaceryw extends Sprite
   {
      public function Quqaceryw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.nybedo();
         this.mipuguc();
         this.coludusij("Text","Text");
         this.tozibyt();
         return;
      }

      private const hig:Capitu = Bapipe.kejajaqyv(16777215,16,true);

      private const venehete:Capitu = Bapipe.kejajaqyv(16777215,16,true);

      private const WIDTH:uint = 238;

      private const HEIGHT:uint = 30;

      private const bykize:uint = 10;

      private const tuqiwyd:uint = 21;

      public function coludusij(param1:String, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.hig.setStringBuilder(new Zufi().setParams(param1));
         this.venehete.setStringBuilder(new Zufi().setParams(param2));
         return;
      }

      private function mipuguc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.hig);
         addChild(this.venehete);
         return;
      }

      private function nybedo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         graphics.beginFill(10066329);
         graphics.drawRect(0,0,this.WIDTH,this.HEIGHT);
         return;
      }

      private function tozibyt() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Dak = new Dak();
         _loc1_.push(this.hig.textChanged);
         _loc1_.push(this.venehete.textChanged);
         _loc1_.complete.addOnce(this.fiqapek);
         return;
      }

      private function fiqapek() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hig.x=this.bykize;
         this.hig.y=this.tuqiwyd;
         this.venehete.x=this.WIDTH-this.bykize-this.venehete.width;
         this.venehete.y=this.tuqiwyd;
         return;
      }
   }
[/CLASS]
}