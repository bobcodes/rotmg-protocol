package bigesufy
{
   import aaa.rotmg.config.GoogleAppConfig;
   import aaa.rotmg.config.UserConfig;


   public class Vuca extends Object implements GoogleAppConfig
   {
      public function Vuca() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const femykojus:String = "rotmgtesting.appspot.com";

      private const patij:String = "http://"+this.femykojus;

      private const rody:String = "https://"+this.femykojus;

      private const nuw:String = "UA-99999999-1";

      private const geri:String = "<font color=\'#FFEE00\'>TESTING APP ENGINE, PRIVATE SERVER</font> #{VERSION}";

      public function getRotmgAppUrl(param1:Boolean=false) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1?this.patij:this.rody;
      }

      public function getGoogleAccountNumber() : String {
         return this.nuw;
      }

      public function getBuildDisplayLabel() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = UserConfig.BUILD_VERSION+"."+UserConfig.MINOR_VERSION;
         return this.geri.replace("{VERSION}",_loc1_);
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
         return true;
      }
   }

}