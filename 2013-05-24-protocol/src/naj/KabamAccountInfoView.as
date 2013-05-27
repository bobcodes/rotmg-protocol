package naj
{
   import flash.display.Sprite;
   import kat.Jyhyk;
   import movimet.Lufub;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;


   public class KabamAccountInfoView extends Sprite implements Jyhyk
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function KabamAccountInfoView() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.higyly();
         return;
      }

      private static const lacasoka:int = 18;

      private var qubifowin:Lufub;

      private var userName:String = "";

      private var bugi:Boolean;

      private function higyly() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qubifowin=new Lufub().setSize(lacasoka).setColor(11776947);
         this.qubifowin.setAutoSize(TextFieldAutoSize.CENTER);
         this.qubifowin.filters=[new DropShadowFilter(0,0,0,1,4,4)];
         addChild(this.qubifowin);
         return;
      }

      public function tepefufe(param1:String, param2:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.userName=param1;
         this.bugi=param2;
         this.qubifowin.setStringBuilder(new Sire().setParams(I18nKeys.nygehami,{userName:param1}));
         return;
      }
   }

}