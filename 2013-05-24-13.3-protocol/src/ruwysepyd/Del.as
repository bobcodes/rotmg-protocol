package ruwysepyd
{
   import qov.Kalefu;
   import fom.Hepeg;
   import sasacen.Baquja;
   import qefinah.Quwaku;
   import qefinah.Miqik;
   import flash.events.MouseEvent;
   import flash.display.Sprite;
   import com.company.assembleegameclient.objects.Player;


   public class Del extends Kalefu
   {
      public function Del() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Jyjimagi;

      public var ruhakony:Hepeg;

      public var zihy:Baquja;

      public var vozori:Quwaku;

      public var qyli:Qah;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zihy.addOnce(this.revogup);
         this.zihy.add(this.gageg);
         this.vozori.add(this.pypujyg);
         return;
      }

      private function pypujyg(param1:Miqik) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.addChild(param1);
         param1.x=this.view.mouseX-param1.width/2;
         param1.y=this.view.mouseY-param1.height/2;
         this.jice(param1);
         return;
      }

      private function jice(param1:Miqik) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.startDrag();
         param1.addEventListener(MouseEvent.MOUSE_UP,this.pal);
         return;
      }

      private function pal(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sprite = Miqik(param1.target);
         this.goqem(_loc2_);
         if(_loc2_.hitTestObject(this.view.pof))
         {
            this.jimefobu(_loc2_);
         }
         return;
      }

      private function jimefobu(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qyli.dispatch();
         this.view.removeChild(param1);
         param1.stopDrag();
         return;
      }

      private function goqem(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.removeEventListener(MouseEvent.MOUSE_UP,this.pal);
         param1.addEventListener(MouseEvent.MOUSE_DOWN,this.futuvily);
         param1.stopDrag();
         return;
      }

      private function futuvily(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sprite = Sprite(param1.target);
         _loc2_.removeEventListener(MouseEvent.MOUSE_DOWN,this.futuvily);
         _loc2_.addEventListener(MouseEvent.MOUSE_UP,this.pal);
         _loc2_.startDrag();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zihy.remove(this.gageg);
         return;
      }

      private function gageg(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.draw();
         return;
      }

      private function revogup(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.myrojy(this.ruhakony.qizys);
         return;
      }
   }

}