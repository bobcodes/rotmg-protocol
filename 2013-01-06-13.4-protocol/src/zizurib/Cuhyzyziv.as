package zizurib
{
[CLASS571]   import flash.display.Sprite;
   import barotuvy.GTween;
   import flash.filters.GlowFilter;


   public class Cuhyzyziv extends Sprite
   {
      public function Cuhyzyziv() {
         var _loc1_:* = false;
         var _loc2_:* = true;
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

      public function lubo(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.text.lubo(param1);
         var _loc2_:GTween = new GTween(this,5,{alpha:0.0});
         _loc2_.delay=5;
         _loc2_.onComplete=this.caqa;
         return;
      }

      private function caqa(param1:GTween) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return;
      }
   }
[/CLASS]
}