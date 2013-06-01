package gob
{
[CLASS195]   import natus.Hewoda;
   import com.company.assembleegameclient.parameters.Parameters;


   public class Cikis extends Object implements Hewoda
   {
      public function Cikis() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const vegahov:String = "rotmgtesting.appspot.com";

      private const vuquqygy:String = "http://"+this.vegahov;

      private const rejy:String = "https://"+this.vegahov;

      private const zizi:String = "UA-99999999-1";

      private const leryd:String = "<font color=\'#9900FF\'>{IP}</font> #{VERSION}";

      private var goj:String;

      public function setAddress(param1:String) : Cikis {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.goj=param1;
         return this;
      }

      public function static(param1:Boolean=false) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1?this.vuquqygy:this.rejy;
      }

      public function notidedak() : String {
         return this.zizi;
      }

      public function cakavuz() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = Parameters.jodaga+"."+Parameters.nyr;
         return this.leryd.replace("{IP}",this.goj).replace("{VERSION}",_loc1_);
      }

      public function lulocudib() : Boolean {
         return true;
      }

      public function wuwu() : Boolean {
         return true;
      }

      public function zubybo() : Boolean {
         return true;
      }

      public function cevohyt() : Boolean {
         return false;
      }

      public function gike() : Boolean {
         return false;
      }

      public function sol() : Boolean {
         return true;
      }

      public function sabafu() : Boolean {
         return false;
      }
   }
[/CLASS]
}