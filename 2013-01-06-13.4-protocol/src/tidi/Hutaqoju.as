package tidi
{
[CLASS493]   import tysenyzy.Zovisis;
   import vinirudel.Wukyva;
   import nylos.Kyk;
   import dugahymu.Watygilar;
   import dugahymu.Hohu;
   import flash.events.MouseEvent;
   import flash.display.Sprite;
   import com.company.assembleegameclient.objects.Player;


   public class Hutaqoju extends Zovisis
   {
      public function Hutaqoju() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Vepel;

      public var fysufapav:Wukyva;

      public var fyz:Kyk;

      public var nopyb:Watygilar;

      public var judigan:Larebur;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fyz.addOnce(this.nakykyhi);
         this.fyz.add(this.cad);
         this.nopyb.add(this.vycocepi);
         return;
      }

      private function vycocepi(param1:Hohu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.addChild(param1);
         param1.x=this.view.mouseX-param1.width/2;
         param1.y=this.view.mouseY-param1.height/2;
         this.jawysiwyw(param1);
         return;
      }

      private function jawysiwyw(param1:Hohu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.startDrag();
         param1.addEventListener(MouseEvent.MOUSE_UP,this.ducyle);
         return;
      }

      private function ducyle(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sprite = Hohu(param1.target);
         this.kute(_loc2_);
         if(_loc2_.hitTestObject(this.view.kiki))
         {
            this.zifezuqag(_loc2_);
         }
         return;
      }

      private function zifezuqag(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.judigan.dispatch();
         this.view.removeChild(param1);
         param1.stopDrag();
         return;
      }

      private function kute(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.removeEventListener(MouseEvent.MOUSE_UP,this.ducyle);
         param1.addEventListener(MouseEvent.MOUSE_DOWN,this.jisazin);
         param1.stopDrag();
         return;
      }

      private function jisazin(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = Sprite(param1.target);
         _loc2_.removeEventListener(MouseEvent.MOUSE_DOWN,this.jisazin);
         _loc2_.addEventListener(MouseEvent.MOUSE_UP,this.ducyle);
         _loc2_.startDrag();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fyz.remove(this.cad);
         return;
      }

      private function cad(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.draw();
         return;
      }

      private function nakykyhi(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.goqudanu(this.fysufapav.palaliz);
         return;
      }
   }
[/CLASS]
}