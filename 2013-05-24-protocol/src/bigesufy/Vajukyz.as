package bigesufy
{
   import aaa.rotmg.config.GoogleAppConfig;
   import aaa.rotmg.config.UserConfig;


   public class Vajukyz extends Object implements GoogleAppConfig
   {
      public function Vajukyz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const femykojus:String = "rotmgtesting.appspot.com";

      private const patij:String = "http://"+this.femykojus;

      private const rody:String = "https://"+this.femykojus;

      private const nuw:String = "UA-11236645-6";

      private const geri:String = "<font color=\'#FF0000\'>TESTING</font> #{VERSION}";

      public function getRotmgAppUrl(param1:Boolean=false) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1?this.patij:this.rody;
      }

      public function getGoogleAccountNumber() : String {
         return this.nuw;
      }

      public function getBuildDisplayLabel() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = UserConfig.BUILD_VERSION+"."+UserConfig.MINOR_VERSION;
         return this.geri.replace("{VERSION}",_loc1_);
      }

      public function dokoza() : Boolean {
         return false;
      }

      public function biqadepo() : Boolean {
         return true;
      }

      public function vilelym() : Boolean {
         return true;
      }

      public function cuk() : Boolean {
         return false;
      }

      public function riz() : Boolean {
         return true;
      }

      public function sonyh() : Boolean {
         return false;
      }

      public function dyb() : Boolean {
         return false;
      }
   }

}