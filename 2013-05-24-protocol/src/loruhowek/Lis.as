package loruhowek
{
   import flash.display.Sprite;
   import flash.display.DisplayObject;


   public class Lis extends Sprite
   {
      public function Lis() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var toolTip:DisplayObject;

      public function show(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hide();
         this.toolTip=param1;
         if(param1)
         {
            addChild(param1);
         }
         return;
      }

      public function hide() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if((this.toolTip)&&(this.toolTip.parent))
         {
            this.toolTip.parent.removeChild(this.toolTip);
         }
         this.toolTip=null;
         return;
      }
   }

}