package dubokusi
{
   import flash.display.Sprite;
   import dilywopavy.GTween;
   import flash.filters.GlowFilter;


   public class Rokawo extends Sprite
   {
      public function Rokawo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.text=new ProTipText();
         this.text.x=300;
         this.text.y=125;
         addChild(this.text);
         filters=[new GlowFilter(0,1,3,3,2,1)];
         mouseEnabled=false;
         mouseChildren=false;
         return;
      }

      private var text:ProTipText;

      public function sycorobeg(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.text.sycorobeg(param1);
         var _loc2_:GTween = new GTween(this,5,{alpha:0.0});
         _loc2_.delay=5;
         _loc2_.onComplete=this.fokilus;
         return;
      }

      private function fokilus(param1:GTween) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return;
      }
   }

}