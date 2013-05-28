package aaa.rotmg.config
{
   import aaa.rotmg.config.GoogleAppConfig;
   import aaa.rotmg.config.UserConfig;


   public class GoogleAppConfigProd extends Object implements GoogleAppConfig
   {
      public function GoogleAppConfigProd() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const rotmgAppHost:String = "realmofthemadgod.appspot.com";

      private const rotmgAppHttp:String = "http://"+this.rotmgAppHost;

      private const rotmgAppHttps:String = "https://"+this.rotmgAppHost;

      private const nuw:String = "UA-11236645-4";

      private const geri:String = "RotMG #{VERSION}.{MINOR}";

      public function getRotmgAppUrl(param1:Boolean=false) : String {
         return param1?this.rotmgAppHttp:this.rotmgAppHttps;
      }

      public function getGoogleAccountNumber() : String {
         return this.nuw;
      }

      public function getBuildDisplayLabel() : String {
         return this.geri.replace("{VERSION}",UserConfig.BUILD_VERSION).replace("{MINOR}",UserConfig.MINOR_VERSION);
      }

      public function dokoza() : Boolean {
         return false;
      }

      public function biqadepo() : Boolean {
         return false;
      }

      public function vilelym() : Boolean {
         return false;
      }

      public function riz() : Boolean {
         return true;
      }

      public function cuk() : Boolean {
         return false;
      }

      public function sonyh() : Boolean {
         return false;
      }

      public function dyb() : Boolean {
         return false;
      }
   }

}