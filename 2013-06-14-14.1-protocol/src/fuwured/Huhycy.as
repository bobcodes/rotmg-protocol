package fuwured
{
   import daqun.Qobeta;
   import aaa.RotmgParameters.RotmgParameters;


   public class Huhycy extends Object implements Qobeta
   {
      public function Huhycy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const loh:String = "http://localhost:8080";

      private const vyzofoz:String = "UA-99999999-1";

      private const dywez:String = "<font color=\'#FFEE00\'>LOCALHOST</font> #{VERSION}";

      public function kegadag(param1:Boolean=false) : String {
         return this.loh;
      }

      public function suvijub() : String {
         return this.vyzofoz;
      }

      public function vodupol() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = RotmgParameters.hoci+"."+RotmgParameters.vylyc;
         return this.dywez.replace("{VERSION}",_loc1_);
      }

      public function cupyryl() : Boolean {
         return true;
      }

      public function cezoli() : Boolean {
         return true;
      }

      public function mysebanun() : Boolean {
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