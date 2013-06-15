package haj
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import flash.events.MouseEvent;


   public class Hiquhifu extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Hiquhifu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         addChild(new ruto());
         buttonMode=true;
         addEventListener(MouseEvent.CLICK,this.munufoqul);
         return;
      }

      public static var ruto:Class = Dyvaji;

      public const peqe:Qanyduk = new Qanyduk();

      public var disabled:Boolean = false;

      public function sotymojor(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.disabled=param1;
         return;
      }

      private function munufoqul(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.disabled)
         {
            this.peqe.dispatch();
            removeEventListener(MouseEvent.CLICK,this.munufoqul);
         }
         return;
      }
   }

}