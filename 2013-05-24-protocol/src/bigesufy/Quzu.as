package bigesufy
{
   import aaa.rotmg.config.GoogleAppConfig;
   import aaa.rotmg.config.UserConfig;


   public class Quzu extends Object implements GoogleAppConfig
   {
      public function Quzu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const femykojus:String = "http://localhost:8080";

      private const nuw:String = "UA-99999999-1";

      private const geri:String = "<font color=\'#FFEE00\'>LOCALHOST</font> #{VERSION}";

      public function getRotmgAppUrl(param1:Boolean=false) : String {
         return this.femykojus;
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
         return true;
      }

      public function biqadepo() : Boolean {
         return true;
      }

      public function rydoz() : Boolean {
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
         return true;
      }
   }

}