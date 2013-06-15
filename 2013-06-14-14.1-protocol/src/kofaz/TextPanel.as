package kofaz
{
   import fytalis.Panel;
   import hivysif.Guzowoja;
   import jediwip.Kybidu;
   import flash.text.TextFieldAutoSize;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.game.GameSprite;


   public class TextPanel extends Panel
   {
      public function TextPanel(param1:GameSprite) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         this.getefafi();
         return;
      }

      private var vatapyle:Guzowoja;

      private var rijid:Number;

      private var kyjukak:Number;

      public function init(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vatapyle.setStringBuilder(new Kybidu().setParams(param1));
         this.vatapyle.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Guzowoja.MIDDLE);
         this.vatapyle.x=WIDTH/2;
         this.vatapyle.y=HEIGHT/2;
         return;
      }

      private function getefafi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vatapyle=new Guzowoja().setSize(16).setColor(16777215);
         this.vatapyle.setBold(true);
         this.vatapyle.setStringBuilder(new Kybidu().setParams(Vibemod.maciroli));
         this.vatapyle.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.vatapyle);
         return;
      }
   }

}