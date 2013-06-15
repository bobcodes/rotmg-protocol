package fidufywo
{
   import flash.display.Sprite;
   import buryq.GTween;
   import flash.filters.GlowFilter;


   public class Muharonyh extends Sprite
   {
      public function Muharonyh() {
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

      public function losored(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.text.losored(param1);
         var _loc2_:GTween = new GTween(this,5,{alpha:0.0});
         _loc2_.delay=5;
         _loc2_.onComplete=this.bikosoror;
         return;
      }

      private function bikosoror(param1:GTween) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return;
      }
   }

}