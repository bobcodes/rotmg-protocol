package fuwured
{
   import daqun.Qobeta;
   import com.company.assembleegameclient.parameters.Parameters;


   public class Moryvi extends Object implements Qobeta
   {
      public function Moryvi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const loh:String = "realmofthemadgod.appspot.com";

      private const nyfyhyl:String = "http://"+this.loh;

      private const worinevor:String = "https://"+this.loh;

      private const vyzofoz:String = "UA-11236645-4";

      private const dywez:String = "RotMG #{VERSION}.{MINOR}";

      public function kegadag(param1:Boolean=false) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1?this.nyfyhyl:this.worinevor;
      }

      public function suvijub() : String {
         return this.vyzofoz;
      }

      public function vodupol() : String {
         return this.dywez.replace("{VERSION}",Parameters.hoci).replace("{MINOR}",Parameters.vylyc);
      }

      public function cupyryl() : Boolean {
         return false;
      }

      public function cezoli() : Boolean {
         return false;
      }

      public function vusywagob() : Boolean {
         return false;
      }

      public function hyvoj() : Boolean {
         return true;
      }

      public function kihomat() : Boolean {
         return false;
      }

      public function molul() : Boolean {
         return false;
      }

      public function kel() : Boolean {
         return false;
      }
   }

}