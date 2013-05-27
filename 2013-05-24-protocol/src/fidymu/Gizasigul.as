package fidymu
{
   import com.company.assembleegameclient.game.GameSprite;
   import wegyluke.Cowymute;
   import flash.events.Event;
   import com.company.googleanalytics.GA;
   import aaa.rotmg.config.UserConfig;
   import jag.Giq;
   import aaa.rotmg.i18n.I18nKeys;
   import nas.Dialog;


   public class Gizasigul extends Tuneji
   {
      public function Gizasigul(param1:GameSprite) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nipaj=Giq.kid().getInstance(Cowymute);
         this.qizys=param1;
         super("LeavePetYardDialog.title","LeavePetYardDialog.text",I18nKeys.gobeqyhe,I18nKeys.webytu,null);
         addEventListener(Dialog.LEFT_BUTTON,this.onClose);
         addEventListener(Dialog.RIGHT_BUTTON,this.saqamogyq);
         pevyh.setMultiLine(true);
         return;
      }

      private var qizys:GameSprite;

      private var nipaj:Cowymute;

      private function onClose(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nipaj.dispatch();
         return;
      }

      private function saqamogyq(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qizys.gsc_.escape();
         GA.global().trackEvent("enterPortal","Nexus Button");
         UserConfig.data_.needsRandomRealm=false;
         UserConfig.save();
         this.nipaj.dispatch();
         return;
      }
   }

}