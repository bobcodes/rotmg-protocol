package fuquqo
{
   import fom.Hepeg;
   import zubamyki.Sywyvu;
   import pepyca.Depagy;
   import aaa.rotmg.config.UserConfig;
   import aaa.rotmg.i18n.I18nKeys;


   public class Zehesat extends Object
   {
      public function Zehesat() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var data:String;

      public var ruhakony:Hepeg;

      public var fyve:Sywyvu;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.data=="/help")
         {
            this.fyve.dispatch(Depagy.make(UserConfig.giqik,I18nKeys.nuro));
         }
         else
         {
            this.ruhakony.qizys.gsc_.playerText(this.data);
         }
         return;
      }
   }

}