package fuwured
{
   import daqun.Qobeta;
   import com.company.assembleegameclient.parameters.Parameters;


   public class Duc extends Object implements Qobeta
   {
      public function Duc() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const loh:String = "rotmgtesting.appspot.com";

      private const nyfyhyl:String = "http://"+this.loh;

      private const worinevor:String = "https://"+this.loh;

      private const vyzofoz:String = "UA-99999999-1";

      private const dywez:String = "<font color=\'#FFEE00\'>TESTING APP ENGINE, PRIVATE SERVER</font> #{VERSION}";

      public function kegadag(param1:Boolean=false) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1?this.nyfyhyl:this.worinevor;
      }

      public function suvijub() : String {
         return this.vyzofoz;
      }

      public function vodupol() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = Parameters.hoci+"."+Parameters.vylyc;
         return this.dywez.replace("{VERSION}",_loc1_);
      }

      public function cupyryl() : Boolean {
         return true;
      }

      public function cezoli() : Boolean {
         return true;
      }

      public function vusywagob() : Boolean {
         return true;
      }

      public function hyvoj() : Boolean {
         return false;
      }

      public function kihomat() : Boolean {
         return false;
      }

      public function molul() : Boolean {
         return true;
      }

      public function kel() : Boolean {
         return true;
      }
   }

}