package sylusowuf
{
   import flash.display.Sprite;


   public final class Vydizys extends Sprite
   {
      public function Vydizys() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         addChild(this.output=new Gecafehu());
         addChild(this.input=new Fiqemeqat());
         return;
      }

      public var output:Gecafehu;

      public var input:Fiqemeqat;

      override public function set visible(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super.visible=param1;
         if((param1)&&(stage))
         {
            stage.focus=this.input;
         }
         return;
      }
   }

}