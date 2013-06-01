package rareja
{
[CLASS1358]   import flash.display.Sprite;


   public final class Delyh extends Sprite
   {
      public function Delyh() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         addChild(this.output=new Qawysodo());
         addChild(this.input=new Visybe());
         return;
      }

      public var output:Qawysodo;

      public var input:Visybe;

      override public function set visible(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.visible=param1;
         if((param1)&&(stage))
         {
            stage.focus=this.input;
         }
         return;
      }
   }
[/CLASS]
}