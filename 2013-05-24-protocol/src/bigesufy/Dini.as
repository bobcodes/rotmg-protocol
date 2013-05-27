package bigesufy
{
   import aaa.rotmg.config.GoogleAppConfig;
   import aaa.rotmg.config.UserConfig;


   public class Dini extends Object implements GoogleAppConfig
   {
      public function Dini() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const _testingAppDomain:String = "rotmgtesting.appspot.com";

      private const _testingAppHttp:String = "http://"+this._testingAppDomain;

      private const _testingAppHttps:String = "https://"+this._testingAppDomain;

      private const _googleAccountNumber:String = "UA-99999999-1";

      private const _lblAddressVersion:String = "<font color=\'#9900FF\'>{IP}</font> #{VERSION}";

      private var _address:String;

      public function setAddress(param1:String) : Dini {
         this._address=param1;
         return this;
      }

      public function getRotmgAppUrl(param1:Boolean=false) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1?this._testingAppHttp:this._testingAppHttps;
      }

      public function getGoogleAccountNumber() : String {
         return this._googleAccountNumber;
      }

      public function getBuildDisplayLabel() : String {
         var _loc1_:String = UserConfig.BUILD_VERSION+"."+UserConfig.MINOR_VERSION;
         return this._lblAddressVersion.replace("{IP}",this._address).replace("{VERSION}",_loc1_);
      }

      public function dokoza() : Boolean {
         return true;
      }

      public function biqadepo() : Boolean {
         return true;
      }

      public function vilelym() : Boolean {
         return true;
      }

      public function riz() : Boolean {
         return false;
      }

      public function cuk() : Boolean {
         return false;
      }

      public function sonyh() : Boolean {
         return true;
      }

      public function dyb() : Boolean {
         return false;
      }
   }

}