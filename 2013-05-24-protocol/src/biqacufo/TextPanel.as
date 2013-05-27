package biqacufo
{
   import vaqob.Panel;
   import movimet.Lufub;
   import nec.Sire;
   import flash.text.TextFieldAutoSize;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.game.GameSprite;


   public class TextPanel extends Panel
   {
      public function TextPanel(param1:GameSprite) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         this.palyhazo();
         return;
      }

      private var fuhobi:Lufub;

      private var zuqazybyj:Number;

      private var zym:Number;

      public function init(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fuhobi.setStringBuilder(new Sire().setParams(param1));
         this.fuhobi.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Lufub.MIDDLE);
         this.fuhobi.x=WIDTH/2;
         this.fuhobi.y=HEIGHT/2;
         return;
      }

      private function palyhazo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fuhobi=new Lufub().setSize(16).setColor(16777215);
         this.fuhobi.setBold(true);
         this.fuhobi.setStringBuilder(new Sire().setParams(I18nKeys.nibylahe));
         this.fuhobi.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.fuhobi);
         return;
      }
   }

}