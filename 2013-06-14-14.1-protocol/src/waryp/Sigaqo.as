package waryp
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import flash.events.Event;
   import jediwip.Kybidu;
   import qymoho.Taziw;
   import com.company.rotmg.graphics.ScreenGraphic;
   import flash.text.TextFieldAutoSize;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;


   public class Sigaqo extends Sprite
   {
      public function Sigaqo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.text=new Guzowoja();
         super();
         addChild(new Taziw());
         addChild(new ScreenGraphic());
         this.text.setSize(30).setColor(16777215).setVerticalAlign(Guzowoja.MIDDLE).setAutoSize(TextFieldAutoSize.CENTER).setBold(true);
         this.text.y=550;
         addEventListener(Event.ADDED_TO_STAGE,this.wypyguzata);
         this.text.setStringBuilder(new Kybidu().setParams(Vibemod.rasih));
         this.text.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         addChild(this.text);
         return;
      }

      private var text:Guzowoja;

      private function wypyguzata(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ADDED_TO_STAGE,this.wypyguzata);
         this.text.x=stage.stageWidth/2;
         return;
      }

      public function somaqu(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.text.setStringBuilder(new Kybidu().setParams(param1));
         return;
      }
   }

}