package fuwured
{
   import daqun.Qobeta;
   import aaa.RotmgParameters.RotmgParameters;


   public class Bulok extends Object implements Qobeta
   {
      public function Bulok() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const loh:String = "rotmgtesting.appspot.com";

      private const nyfyhyl:String = "http://"+this.loh;

      private const worinevor:String = "https://"+this.loh;

      private const vyzofoz:String = "UA-11236645-6";

      private const dywez:String = "<font color=\'#FF0000\'>TESTING</font> #{VERSION}";

      public function kegadag(param1:Boolean=false) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1?this.nyfyhyl:this.worinevor;
      }

      public function suvijub() : String {
         return this.vyzofoz;
      }

      public function vodupol() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = RotmgParameters.hoci+"."+RotmgParameters.vylyc;
         return this.dywez.replace("{VERSION}",_loc1_);
      }

      public function cupyryl() : Boolean {
         return false;
      }

      public function cezoli() : Boolean {
         return true;
      }

      public function vusywagob() : Boolean {
         return true;
      }

      public function kihomat() : Boolean {
         return false;
      }

      public function hyvoj() : Boolean {
         return true;
      }

      public function molul() : Boolean {
         return false;
      }

      public function kel() : Boolean {
         return false;
      }
   }

}