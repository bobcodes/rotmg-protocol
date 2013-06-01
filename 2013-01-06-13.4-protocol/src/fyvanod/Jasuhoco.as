package fyvanod
{
[CLASS249]   import flash.display.Sprite;
   import tinava.Dab;
   import flash.events.MouseEvent;


   public class Jasuhoco extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Jasuhoco() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         addChild(new jiha());
         buttonMode=true;
         addEventListener(MouseEvent.CLICK,this.win);
         return;
      }

      public static var jiha:Class = Vyn;

      public const zokokof:Dab = new Dab();

      public var disabled:Boolean = false;

      public function pyjeluke(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.disabled=param1;
         return;
      }

      private function win(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.disabled)
         {
            this.zokokof.dispatch();
            removeEventListener(MouseEvent.CLICK,this.win);
         }
         return;
      }
   }
[/CLASS]
}