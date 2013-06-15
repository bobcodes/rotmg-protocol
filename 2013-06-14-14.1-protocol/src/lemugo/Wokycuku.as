package lemugo
{
   import mukyrosu.Qanyduk;
   import com.company.assembleegameclient.appengine.Jys;
   import pugem.Account;
   import byredo.Monewys;
   import aaa.RotmgParameters.RotmgParameters;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.appengine.Zaz;
   import jovurora.Cyp;


   public class Wokycuku extends Object
   {
      public function Wokycuku() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.nyniti=true;
         return;
      }

      public const gokecu:Qanyduk = new Qanyduk(int);

      public const qalimu:Qanyduk = new Qanyduk(int);

      public var fegiwesyn:Jys;

      public var nyniti:Boolean;

      private var fyna:int;

      private var isAgeVerified:Boolean;

      public var account:Account;

      public function set lobuwyjer(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fyna=param1;
         return;
      }

      public function get lobuwyjer() : int {
         return this.fyna;
      }

      public function qetemiq() : Boolean {
         return this.fegiwesyn.lad;
      }

      public function kuzep(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fegiwesyn.lad=param1;
         return;
      }

      public function cyvujymib() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.isAgeVerified)||this.account is Monewys||(this.fegiwesyn.isAgeVerified);
      }

      public function tidezeto(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.isAgeVerified=true;
         return;
      }

      public function muh() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (RotmgParameters.data_.needsTutorial)&&this.fegiwesyn.nextCharId_==1;
      }

      public function dyqab() : int {
         return this.fegiwesyn.maxNumChars_;
      }

      public function vemiv(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fegiwesyn.maxNumChars_=param1;
         return;
      }

      public function pucutad() : int {
         return this.fegiwesyn.credits_;
      }

      public function gupemeqa(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fegiwesyn.credits_=this.fegiwesyn.credits_+param1;
         this.gokecu.dispatch(this.fegiwesyn.credits_);
         return;
      }

      public function mabifavypu(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.fegiwesyn.credits_!=param1)
         {
            this.fegiwesyn.credits_=param1;
            this.gokecu.dispatch(param1);
         }
         return;
      }

      public function wopufud() : int {
         return this.fegiwesyn.qyp;
      }

      public function sonare(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.fegiwesyn.qyp!=param1)
         {
            this.fegiwesyn.qyp=param1;
            this.qalimu.dispatch(param1);
         }
         return;
      }

      public function dopinowys() : int {
         return this.fegiwesyn.numChars_;
      }

      public function zana(param1:int) : SavedCharacter {
         return this.fegiwesyn.zana(param1);
      }

      public function deleteCharacter(param1:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:SavedCharacter = this.fegiwesyn.zana(param1);
         var _loc3_:int = this.fegiwesyn.savedChars_.indexOf(_loc2_);
         if(_loc3_!=-1)
         {
            this.fegiwesyn.savedChars_.splice(_loc3_,1);
            this.fegiwesyn.numChars_--;
         }
         return;
      }

      public function sosimu() : int {
         return this.fegiwesyn.accountId_;
      }

      public function simyba() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.fegiwesyn.accountId_==-1);
      }

      public function pikir() : int {
         return this.fegiwesyn.numStars_;
      }

      public function qasafake() : String {
         return this.fegiwesyn.guildName_;
      }

      public function gyharo() : int {
         return this.fegiwesyn.guildRank_;
      }

      public function pyg() : int {
         return this.fegiwesyn.nextCharSlotPrice_;
      }

      public function linuhy() : int {
         return this.fegiwesyn.totalFame_;
      }

      public function hidehab() : int {
         return this.fegiwesyn.nextCharId_;
      }

      public function gohiqu(param1:int) : SavedCharacter {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:SavedCharacter = null;
         for each (_loc2_ in this.fegiwesyn.savedChars_)
         {
            if(_loc2_.charId()==param1)
            {
               return _loc2_;
            }
         }
         return null;
      }

      public function humoho(param1:int) : SavedCharacter {
         return this.fegiwesyn.savedChars_[param1];
      }

      public function mupububiq() : Boolean {
         return this.fegiwesyn.dygijy;
      }

      public function woqadav() : Vector.<Zaz> {
         return this.fegiwesyn.pebaqo;
      }

      public function caqih() : Cyp {
         return this.fegiwesyn.cyzyloq;
      }

      public function duqisyd(param1:int, param2:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.fegiwesyn.bapikoqan[param1]=param2;
         return;
      }

      public function getName() : String {
         return this.fegiwesyn.name_;
      }

      public function getConverted() : Boolean {
         return this.fegiwesyn.converted_;
      }

      public function setName(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fegiwesyn.name_=param1;
         return;
      }

      public function besu() : Boolean {
         return this.fegiwesyn.dihap;
      }

      public function getNewUnlocks(param1:int, param2:int) : Array {
         return this.fegiwesyn.cisi(param1,param2);
      }

      public function hasAvailableCharSlot() : Boolean {
         return this.fegiwesyn.hasAvailableCharSlot();
      }

      public function biq() : int {
         return this.fegiwesyn.mijido();
      }

      public function zycelady() : Vector.<SavedCharacter> {
         return this.fegiwesyn.savedChars_;
      }

      public function suzu() : Object {
         return this.fegiwesyn.charStats_;
      }

      public function nibulo(param1:String, param2:String) : Boolean {
         var _loc3_:String = this.fegiwesyn.bapikoqan[param1];
         return _loc3_==param2;
      }

      public function wewe(param1:int) : Boolean {
         return this.fegiwesyn.wiweh(param1);
      }

      public function gycyfih(param1:int) : int {
         return this.fegiwesyn.lysatul(param1);
      }

      public function modom(param1:int) : int {
         return this.fegiwesyn.bestLevel(param1);
      }

      public function jopipyz(param1:Jys) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fegiwesyn=param1;
         return;
      }
   }

}