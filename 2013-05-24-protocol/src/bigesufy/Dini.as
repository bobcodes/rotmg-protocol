package bigesufy
{
   import cucowury.Vylasy;
   import aaa.rotmg.config.UserConfig;


   public class Dini extends Object implements Vylasy
   {
      public function Dini() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const femykojus:String = "rotmgtesting.appspot.com";

      private const patij:String = "http://"+this.femykojus;

      private const rody:String = "https://"+this.femykojus;

      private const nuw:String = "UA-99999999-1";

      private const geri:String = "<font color=\'#9900FF\'>{IP}</font> #{VERSION}";

      private var gaj:String;

      public function setAddress(param1:String) : Dini {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gaj=param1;
         return this;
      }

      public function jodohyfewo(param1:Boolean=false) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1?this.patij:this.rody;
      }

      public function rul() : String {
         return this.nuw;
      }

      public function qiken() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = UserConfig.kibevyha+"."+UserConfig.cyg;
         return this.geri.replace("{IP}",this.gaj).replace("{VERSION}",_loc1_);
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