package wenono
{
   import tytojonib.Kyjefe;
   import micac.Ciqyl;
   import pusy.Mun;
   import cerywij.Far;
   import flash.display.Sprite;
   import cerywij.Hekogesa;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.objects.Player;


   public class Zohew extends Kyjefe
   {
      public function Zohew() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Tewefem;

      public var fer:Ciqyl;

      public var hibufuryn:Mun;

      public var repevony:Far;

      public var guk:Pirocuvir;

      private var stats:Sprite;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hibufuryn.addOnce(this.kanizica);
         this.hibufuryn.add(this.wyseg);
         this.repevony.add(this.hysofed);
         return;
      }

      private function hysofed(param1:Hekogesa) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.stats=param1;
         this.view.addChild(param1);
         param1.x=this.view.mouseX-param1.width/2;
         param1.y=this.view.mouseY-param1.height/2;
         this.fyka(param1);
         return;
      }

      private function fyka(param1:Hekogesa) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.startDrag();
         param1.addEventListener(MouseEvent.MOUSE_UP,this.vyfac);
         return;
      }

      private function vyfac(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = Hekogesa(param1.target);
         this.rafyguq(_loc2_);
         if(_loc2_.hitTestObject(this.view.qymih))
         {
            this.lalop(_loc2_);
         }
         return;
      }

      private function lalop(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.guk.dispatch();
         this.view.removeChild(param1);
         param1.stopDrag();
         return;
      }

      private function rafyguq(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.removeEventListener(MouseEvent.MOUSE_UP,this.vyfac);
         param1.addEventListener(MouseEvent.MOUSE_DOWN,this.lekyvo);
         param1.stopDrag();
         return;
      }

      private function lekyvo(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = Sprite(param1.target);
         this.stats=_loc2_;
         _loc2_.removeEventListener(MouseEvent.MOUSE_DOWN,this.lekyvo);
         _loc2_.addEventListener(MouseEvent.MOUSE_UP,this.vyfac);
         _loc2_.startDrag();
         return;
      }

      override public function destroy() : void {
         var [OFS3]_loc1_:* = [/OFS]false;
         var [OFS4]_loc2_:* = [/OFS]true;
         this.[OFS8]hibufuryn[/OFS].[OFS15]remove[/OFS][OFS15]([/OFS]this.[OFS12]wyseg[/OFS][OFS15])[/OFS];
         this.[OFS19]repevony[/OFS].[OFS26]remove[/OFS][OFS26]([/OFS]this.[OFS23]hysofed[/OFS][OFS26])[/OFS];
         if((this.[OFS30]stats[/OFS])&&(this.[OFS41]stats[/OFS].[OFS49]hasEventListener[/OFS][OFS49]([/OFS][OFS44]MouseEvent[/OFS].[OFS46]MOUSE_DOWN[/OFS][OFS49])[/OFS]))
         {
            this.[OFS59]stats[/OFS].[OFS71]removeEventListener[/OFS][OFS71]([/OFS][OFS62]MouseEvent[/OFS].[OFS64]MOUSE_DOWN[/OFS][OFS71],[/OFS]this.[OFS68]lekyvo[/OFS][OFS71])[/OFS];
         }
         [OFS74]return[/OFS];
      }

      private function wyseg(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.draw();
         return;
      }

      private function kanizica(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.jazoqizon(this.fer.qyhowo);
         return;
      }
   }

}