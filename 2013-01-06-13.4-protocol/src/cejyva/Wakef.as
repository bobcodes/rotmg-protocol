package cejyva
{
[CLASS267]   import tysenyzy.Zovisis;
   import kirofyny.Tiqimav;
   import tinava.Dab;


   public class Wakef extends Zovisis
   {
      public function Wakef() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var vit:Qopatir;

      public var bycofuvyh:Tiqimav;

      private var piko:Dab;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.piko=this.vit.gif();
         this.piko.add(this.pikymasa);
         return;
      }

      private function pikymasa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bycofuvyh.dispatch();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.piko.remove(this.pikymasa);
         return;
      }
   }
[/CLASS]
}