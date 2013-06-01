package dylaqezo
{
[CLASS371]   import tinava.Dab;
   import com.company.assembleegameclient.appengine.Lelas;
   import leselo.Account;
   import bumyj.Hacuvozep;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.appengine.Ladiz;
   import wyjimigo.Tabyr;


   public class Vusun extends Object
   {
      public function Vusun() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.toqo=true;
         return;
      }

      public const tojafoq:Dab = new Dab(int);

      public const lirysuli:Dab = new Dab(int);

      public var guritejyp:Lelas;

      public var toqo:Boolean;

      private var qihyve:int;

      private var isAgeVerified:Boolean;

      public var account:Account;

      public function set zud(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qihyve=param1;
         return;
      }

      public function get zud() : int {
         return this.qihyve;
      }

      public function cypege() : Boolean {
         return this.guritejyp.lefyjoze;
      }

      public function fuhu(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.guritejyp.lefyjoze=param1;
         return;
      }

      public function zydemy() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.isAgeVerified)||this.account is Hacuvozep||(this.guritejyp.isAgeVerified);
      }

      public function jemybal(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.isAgeVerified=true;
         return;
      }

      public function pisiqet() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (Parameters.data_.needsTutorial)&&this.guritejyp.nextCharId_==1;
      }

      public function cuti() : int {
         return this.guritejyp.maxNumChars_;
      }

      public function jybuvibe(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.guritejyp.maxNumChars_=param1;
         return;
      }

      public function gagesuno() : int {
         return this.guritejyp.credits_;
      }

      public function kisom(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.guritejyp.credits_=this.guritejyp.credits_+param1;
         this.tojafoq.dispatch(this.guritejyp.credits_);
         return;
      }

      public function gyfamyc(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.guritejyp.credits_!=param1)
         {
            this.guritejyp.credits_=param1;
            this.tojafoq.dispatch(param1);
         }
         return;
      }

      public function juzuf() : int {
         return this.guritejyp.waz;
      }

      public function hesaw(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.guritejyp.waz!=param1)
         {
            this.guritejyp.waz=param1;
            this.lirysuli.dispatch(param1);
         }
         return;
      }

      public function wuj() : int {
         return this.guritejyp.numChars_;
      }

      public function roh(param1:int) : SavedCharacter {
         return this.guritejyp.roh(param1);
      }

      public function deleteCharacter(param1:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:SavedCharacter = this.guritejyp.roh(param1);
         var _loc3_:int = this.guritejyp.savedChars_.indexOf(_loc2_);
         if(_loc3_!=-1)
         {
            this.guritejyp.savedChars_.splice(_loc3_,1);
            this.guritejyp.numChars_--;
         }
         return;
      }

      public function wegefog() : int {
         return this.guritejyp.accountId_;
      }

      public function heze() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.guritejyp.accountId_==-1);
      }

      public function pytoseqah() : int {
         return this.guritejyp.numStars_;
      }

      public function pesabegu() : String {
         return this.guritejyp.guildName_;
      }

      public function tupojyt() : int {
         return this.guritejyp.guildRank_;
      }

      public function joze() : int {
         return this.guritejyp.nextCharSlotPrice_;
      }

      public function zobejicyz() : int {
         return this.guritejyp.totalFame_;
      }

      public function lazotidiz() : int {
         return this.guritejyp.nextCharId_;
      }

      public function syci(param1:int) : SavedCharacter {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:SavedCharacter = null;
         for each (_loc2_ in this.guritejyp.savedChars_)
         {
            if(_loc2_.charId()==param1)
            {
               return _loc2_;
            }
         }
         return null;
      }

      public function raherev(param1:int) : SavedCharacter {
         return this.guritejyp.savedChars_[param1];
      }

      public function cevewaza() : Boolean {
         return this.guritejyp.qihojuzol;
      }

      public function tavipid() : Vector.<Ladiz> {
         return this.guritejyp.damucydyg;
      }

      public function hivukari() : Tabyr {
         return this.guritejyp.velolu;
      }

      public function got(param1:int, param2:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.guritejyp.gihejo[param1]=param2;
         return;
      }

      public function getName() : String {
         return this.guritejyp.name_;
      }

      public function getConverted() : Boolean {
         return this.guritejyp.converted_;
      }

      public function setName(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.guritejyp.name_=param1;
         return;
      }

      public function segafugan() : Boolean {
         return this.guritejyp.zykijaq;
      }

      public function getNewUnlocks(param1:int, param2:int) : Array {
         return this.guritejyp.vamulegim(param1,param2);
      }

      public function hasAvailableCharSlot() : Boolean {
         return this.guritejyp.hasAvailableCharSlot();
      }

      public function qat() : int {
         return this.guritejyp.lifofula();
      }

      public function qiziwizom() : Vector.<SavedCharacter> {
         return this.guritejyp.savedChars_;
      }

      public function didodaduz() : Object {
         return this.guritejyp.charStats_;
      }

      public function giho(param1:String, param2:String) : Boolean {
         var _loc3_:String = this.guritejyp.gihejo[param1];
         return _loc3_==param2;
      }

      public function mobacek(param1:int) : Boolean {
         return this.guritejyp.wym(param1);
      }

      public function zot(param1:int) : int {
         return this.guritejyp.bukiga(param1);
      }

      public function muj(param1:int) : int {
         return this.guritejyp.bestLevel(param1);
      }

      public function dicepa(param1:Lelas) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.guritejyp=param1;
         return;
      }
   }
[/CLASS]
}