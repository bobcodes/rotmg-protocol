package hotewa
{
   import tulunyno.Hugyqufyq;
   import com.company.assembleegameclient.appengine.Kewisesa;
   import aaa.rotmg.account.Account;
   import aaa.rotmg.account.KongregateAccount;
   import aaa.rotmg.config.UserConfig;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.appengine.Fuzileh;
   import kogyc.Mile;


   public class Baqifa extends Object
   {
      public function Baqifa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.napabapuq=true;
         return;
      }

      public const gyquzenu:Hugyqufyq = new Hugyqufyq(int);

      public const hywelenyz:Hugyqufyq = new Hugyqufyq(int);

      public var qyk:Kewisesa;

      public var napabapuq:Boolean;

      private var julisubek:int;

      private var isAgeVerified:Boolean;

      public var account:Account;

      public function set pyt(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.julisubek=param1;
         return;
      }

      public function get pyt() : int {
         return this.julisubek;
      }

      public function fybema() : Boolean {
         return this.qyk.cygah;
      }

      public function siqykol(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qyk.cygah=param1;
         return;
      }

      public function gywufo() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.isAgeVerified)||this.account is KongregateAccount||(this.qyk.isAgeVerified);
      }

      public function cufelehed(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.isAgeVerified=true;
         return;
      }

      public function koqifanu() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (UserConfig.data_.needsTutorial)&&this.qyk.nextCharId_==1;
      }

      public function konor() : int {
         return this.qyk.maxNumChars_;
      }

      public function pyjykusa(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qyk.maxNumChars_=param1;
         return;
      }

      public function cuvo() : int {
         return this.qyk.credits_;
      }

      public function wemafowyq(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qyk.credits_=this.qyk.credits_+param1;
         this.gyquzenu.dispatch(this.qyk.credits_);
         return;
      }

      public function delita(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.qyk.credits_!=param1)
         {
            this.qyk.credits_=param1;
            this.gyquzenu.dispatch(param1);
         }
         return;
      }

      public function cof() : int {
         return this.qyk.kotobi;
      }

      public function musah(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.qyk.kotobi!=param1)
         {
            this.qyk.kotobi=param1;
            this.hywelenyz.dispatch(param1);
         }
         return;
      }

      public function zimatuhur() : int {
         return this.qyk.numChars_;
      }

      public function joqy(param1:int) : SavedCharacter {
         return this.qyk.joqy(param1);
      }

      public function deleteCharacter(param1:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:SavedCharacter = this.qyk.joqy(param1);
         var _loc3_:int = this.qyk.savedChars_.indexOf(_loc2_);
         if(_loc3_!=-1)
         {
            this.qyk.savedChars_.splice(_loc3_,1);
            this.qyk.numChars_--;
         }
         return;
      }

      public function lyhiqumi() : int {
         return this.qyk.accountId_;
      }

      public function kipygoh() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.qyk.accountId_==-1);
      }

      public function lyr() : int {
         return this.qyk.numStars_;
      }

      public function mybyqevo() : String {
         return this.qyk.guildName_;
      }

      public function vypykosi() : int {
         return this.qyk.guildRank_;
      }

      public function kut() : int {
         return this.qyk.nextCharSlotPrice_;
      }

      public function pupajaje() : int {
         return this.qyk.totalFame_;
      }

      public function ruzimusys() : int {
         return this.qyk.nextCharId_;
      }

      public function qamas(param1:int) : SavedCharacter {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:SavedCharacter = null;
         for each (_loc2_ in this.qyk.savedChars_)
         {
            if(_loc2_.charId()==param1)
            {
               return _loc2_;
            }
         }
         return null;
      }

      public function kodytosu(param1:int) : SavedCharacter {
         return this.qyk.savedChars_[param1];
      }

      public function kuzuqi() : Boolean {
         return this.qyk.luvu;
      }

      public function pujoz() : Vector.<Fuzileh> {
         return this.qyk.sab;
      }

      public function huqub() : Mile {
         return this.qyk.piqona;
      }

      public function vavabukis(param1:int, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.qyk.jepacil[param1]=param2;
         return;
      }

      public function getName() : String {
         return this.qyk.name_;
      }

      public function getConverted() : Boolean {
         return this.qyk.converted_;
      }

      public function setName(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qyk.name_=param1;
         return;
      }

      public function bohuv() : Boolean {
         return this.qyk.wiz;
      }

      public function getNewUnlocks(param1:int, param2:int) : Array {
         return this.qyk.zuquvorab(param1,param2);
      }

      public function hasAvailableCharSlot() : Boolean {
         return this.qyk.hasAvailableCharSlot();
      }

      public function nygec() : int {
         return this.qyk.buzynucy();
      }

      public function hidife() : Vector.<SavedCharacter> {
         return this.qyk.savedChars_;
      }

      public function gudajaw() : Object {
         return this.qyk.charStats_;
      }

      public function kupakyjij(param1:String, param2:String) : Boolean {
         var _loc3_:String = this.qyk.jepacil[param1];
         return _loc3_==param2;
      }

      public function komopiwyv(param1:int) : Boolean {
         return this.qyk.zuzonyrop(param1);
      }

      public function fyqyhemeb(param1:int) : int {
         return this.qyk.gat(param1);
      }

      public function pilinupuh(param1:int) : int {
         return this.qyk.bestLevel(param1);
      }

      public function hovufojes(param1:Kewisesa) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qyk=param1;
         return;
      }
   }

}