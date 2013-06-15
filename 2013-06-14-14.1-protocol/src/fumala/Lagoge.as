package fumala
{
   import flash.display.Sprite;


   public final class Lagoge extends Sprite
   {
      public function Lagoge() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         addChild(this.output=new Walemin());
         addChild(this.input=new Bapel());
         return;
      }

      public var output:Walemin;

      public var input:Bapel;

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

}