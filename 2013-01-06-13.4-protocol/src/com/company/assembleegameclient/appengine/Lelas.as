package com.company.assembleegameclient.appengine
{
[CLASS1002]   import flash.events.Event;
   import wyjimigo.Tabyr;
   import __AS3__.vec.Vector;
   import jet.Varusici;
   import jutesesel.Qibigagal;
   import pogefeqeh.Wahovy;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import leselo.Account;


   public class Lelas extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Lelas(param1:String) {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:* = undefined;
         var _loc5_:Account = null;
         this.savedChars_=new Vector.<SavedCharacter>();
         this.charStats_={};
         this.damucydyg=new Vector.<Ladiz>();
         super(SAVED_CHARS_LIST);
         this.qikyqopuc=param1;
         this.wabedu=new XML(this.qikyqopuc);
         var _loc2_:XML = XML(this.wabedu.Account);
         this.camekika(_loc2_);
         this.himivaf(_loc2_);
         this.gucudiz(_loc2_);
         this.jasyd();
         this.fofyduj();
         this.wafic();
         this.kakuzav();
         this.farelewi();
         var _loc3_:Wahovy = Qibigagal.husuha();
         if(_loc3_)
         {
            _loc5_=_loc3_.getInstance(Account);
            _loc5_.rihesujuc("BestLevel",this.fyv());
            _loc5_.rihesujuc("BestFame",this.jivufut());
            _loc5_.rihesujuc("NumStars",this.numStars_);
         }
         this.gihejo=new Object();
         for each (_loc4_ in this.wabedu.ClassAvailabilityList.ClassAvailability)
         {
            this.gihejo[_loc4_.@id.toString()]=_loc4_.toString();
         }
         return;
      }

      public static const SAVED_CHARS_LIST:String = "SAVED_CHARS_LIST";

      public static const bavalis:String = "available";

      public static const kaqiruzyj:String = "unavailable";

      public static const luhej:String = "unrestricted";

      private static const regim:Tabyr = new Tabyr(37.4436,-122.412);

      private var qikyqopuc:String;

      private var wabedu:XML;

      public var accountId_:int;

      public var nextCharId_:int;

      public var maxNumChars_:int;

      public var numChars_:int = 0;

      public var savedChars_:Vector.<SavedCharacter>;

      public var charStats_:Object;

      public var totalFame_:int = 0;

      public var waz:int = 0;

      public var credits_:int = 0;

      public var numStars_:int = 0;

      public var nextCharSlotPrice_:int;

      public var guildName_:String;

      public var guildRank_:int;

      public var name_:String = null;

      public var zykijaq:Boolean;

      public var converted_:Boolean;

      public var qihojuzol:Boolean;

      public var damucydyg:Vector.<Ladiz>;

      public var velolu:Tabyr;

      public var lefyjoze:Boolean = false;

      public var gihejo:Object;

      public var isAgeVerified:Boolean;

      public function roh(param1:int) : SavedCharacter {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:SavedCharacter = null;
         for each (_loc2_ in this.savedChars_)
         {
            if(_loc2_.charId()==param1)
            {
               return _loc2_;
            }
         }
         return null;
      }

      private function camekika(param1:XML) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.accountId_=param1.AccountId;
         this.name_=param1.Name;
         this.zykijaq=param1.hasOwnProperty("NameChosen");
         this.converted_=param1.hasOwnProperty("Converted");
         this.qihojuzol=param1.hasOwnProperty("Admin");
         this.totalFame_=int(param1.Stats.TotalFame);
         this.waz=int(param1.Stats.Fame);
         this.credits_=int(param1.Credits);
         this.nextCharSlotPrice_=int(param1.NextCharSlotPrice);
         this.isAgeVerified=!(this.accountId_==0)&&param1.IsAgeVerified==1;
         this.lefyjoze=!param1.hasOwnProperty("isFirstDeath");
         return;
      }

      private function himivaf(param1:XML) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = NaN;
         var _loc3_:Varusici = null;
         if(param1.hasOwnProperty("BeginnerPackageTimeLeft"))
         {
            _loc2_=param1.BeginnerPackageTimeLeft;
            _loc3_=this.duta();
            _loc3_.zapefor(_loc2_);
         }
         return;
      }

      private function duta() : Varusici {
         var _loc1_:Wahovy = Qibigagal.husuha();
         var _loc2_:Varusici = _loc1_.getInstance(Varusici);
         return _loc2_;
      }

      private function gucudiz(param1:XML) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = null;
         if(param1.hasOwnProperty("Guild"))
         {
            _loc2_=XML(param1.Guild);
            this.guildName_=_loc2_.Name;
            this.guildRank_=int(_loc2_.Rank);
         }
         return;
      }

      private function jasyd() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:XML = null;
         this.nextCharId_=int(this.wabedu.@nextCharId);
         this.maxNumChars_=int(this.wabedu.@maxNumChars);
         for each (_loc1_ in this.wabedu.Char)
         {
            this.savedChars_.push(new SavedCharacter(_loc1_,this.name_));
            this.numChars_++;
         }
         this.savedChars_.sort(SavedCharacter.zedonog);
         return;
      }

      private function fofyduj() : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:XML = null;
         var _loc3_:* = 0;
         var _loc4_:Wus = null;
         var _loc1_:XML = XML(this.wabedu.Account.Stats);
         for each (_loc2_ in _loc1_.ClassStats)
         {
            _loc3_=int(_loc2_.@objectType);
            _loc4_=new Wus(_loc2_);
            this.numStars_=this.numStars_+_loc4_.numStars();
            this.charStats_[_loc3_]=_loc4_;
         }
         return;
      }

      private function wafic() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         var _loc1_:XML = XML(this.wabedu.News);
         for each (_loc2_ in _loc1_.Item)
         {
            this.damucydyg.push(new Ladiz(_loc2_.Icon,_loc2_.Title,_loc2_.TagLine,_loc2_.Link,int(_loc2_.Date)));
         }
         return;
      }

      private function kakuzav() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.wabedu.hasOwnProperty("Lat"))&&(this.wabedu.hasOwnProperty("Long")))
         {
            this.velolu=new Tabyr(Number(this.wabedu.Lat),Number(this.wabedu.Long));
         }
         else
         {
            this.velolu=regim;
         }
         return;
      }

      public function bestLevel(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Wus = this.charStats_[param1];
         return _loc2_==null?0:_loc2_.bestLevel();
      }

      public function fyv() : int {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Wus = null;
         var _loc1_:* = 0;
         for each (_loc2_ in this.charStats_)
         {
            if(_loc2_.bestLevel()>_loc1_)
            {
               _loc1_=_loc2_.bestLevel();
            }
         }
         return _loc1_;
      }

      public function bukiga(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Wus = this.charStats_[param1];
         return _loc2_==null?0:_loc2_.bukiga();
      }

      public function jivufut() : int {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Wus = null;
         var _loc1_:* = 0;
         for each (_loc2_ in this.charStats_)
         {
            if(_loc2_.bukiga()>_loc1_)
            {
               _loc1_=_loc2_.bukiga();
            }
         }
         return _loc1_;
      }

      public function wym(param1:int) : Boolean {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc2_:XML = ObjectLibrary.zedij[param1];
         for each (_loc3_ in _loc2_.UnlockLevel)
         {
            _loc4_=ObjectLibrary.ronifyva[_loc3_.toString()];
            if(this.bestLevel(_loc4_)<int(_loc3_.@level))
            {
               return false;
            }
         }
         return true;
      }

      public function lifofula() : int {
         return this.maxNumChars_-this.numChars_;
      }

      public function hasAvailableCharSlot() : Boolean {
         return this.numChars_<this.maxNumChars_;
      }

      public function vamulegim(param1:int, param2:int) : Array {
         var _loc14_:* = false;
         var _loc15_:* = true;
         var _loc5_:XML = null;
         var _loc6_:* = 0;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc9_:XML = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc3_:Array = new Array();
         var _loc4_:* = 0;
         while(_loc4_<ObjectLibrary.vyhytu.length)
         {
            _loc5_=ObjectLibrary.vyhytu[_loc4_];
            _loc6_=int(_loc5_.@type);
            if(this.wym(_loc6_))
            {
            }
            else
            {
               _loc7_=true;
               _loc8_=false;
               for each (_loc9_ in _loc5_.UnlockLevel)
               {
                  _loc10_=ObjectLibrary.ronifyva[_loc9_.toString()];
                  _loc11_=int(_loc9_.@level);
                  if(this.bestLevel(_loc10_)>=_loc11_)
                  {
                  }
                  else
                  {
                     if(!(_loc10_==param1)||!(_loc11_==param2))
                     {
                        _loc7_=false;
                        break;
                     }
                     _loc8_=true;
                  }
               }
               if((_loc7_)&&(_loc8_))
               {
                  _loc3_.push(_loc6_);
               }
            }
            _loc4_++;
         }
         return _loc3_;
      }

      override public function clone() : Event {
         return new Lelas(this.qikyqopuc);
      }

      override public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "["+" numChars: "+this.numChars_+" maxNumChars: "+this.maxNumChars_+" ]";
      }

      private var account:Account;

      private function farelewi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Wahovy = Qibigagal.husuha();
         if(_loc1_)
         {
            this.account=_loc1_.getInstance(Account);
         }
         return;
      }

      private function mijezymul() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_<ObjectLibrary.vyhytu.length)
         {
            _loc3_=ObjectLibrary.vyhytu[_loc2_];
            _loc4_=int(_loc3_.@type);
            if(this.wym(_loc4_))
            {
               this.account.rihesujuc(_loc3_.@id+"Unlocked",1);
               _loc1_++;
            }
            _loc2_++;
         }
         this.account.rihesujuc("ClassesUnlocked",_loc1_);
         return;
      }
   }
[/CLASS]
}