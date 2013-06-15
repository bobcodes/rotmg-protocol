package fuwured
{
   import daqun.Qobeta;
   import aaa.RotmgParameters.RotmgParameters;


   public class Rocynav extends Object implements Qobeta
   {
      public function Rocynav() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const loh:String = "rotmgtesting.appspot.com";

      private const nyfyhyl:String = "http://"+this.loh;

      private const worinevor:String = "https://"+this.loh;

      private const vyzofoz:String = "UA-99999999-1";

      private const dywez:String = "<font color=\'#9900FF\'>{IP}</font> #{VERSION}";

      private var qypeg:String;

      public function setAddress(param1:String) : Rocynav {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qypeg=param1;
         return this;
      }

      public function kegadag(param1:Boolean=false) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1?this.nyfyhyl:this.worinevor;
      }

      public function suvijub() : String {
         return this.vyzofoz;
      }

      public function vodupol() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = RotmgParameters.hoci+"."+RotmgParameters.vylyc;
         return this.dywez.replace("{IP}",this.qypeg).replace("{VERSION}",_loc1_);
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
         return false;
      }
   }

}