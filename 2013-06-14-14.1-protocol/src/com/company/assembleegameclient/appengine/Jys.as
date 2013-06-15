package com.company.assembleegameclient.appengine
{
   import flash.events.Event;
   import jovurora.Cyp;
   import __AS3__.vec.Vector;
   import jufu.Jawojicyw;
   import sijizoh.Duq;
   import dyca.Mes;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import pugem.Account;


   public class Jys extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Jys(param1:String) {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:* = undefined;
         var _loc5_:Account = null;
         this.savedChars_=new Vector.<SavedCharacter>();
         this.charStats_={};
         this.pebaqo=new Vector.<Zaz>();
         super(SAVED_CHARS_LIST);
         this.bado=param1;
         this.jiliw=new XML(this.bado);
         var _loc2_:XML = XML(this.jiliw.Account);
         this.wikykane(_loc2_);
         this.robacuc(_loc2_);
         this.rijapyta(_loc2_);
         this.cogipy();
         this.kocepurur();
         this.vejavehu();
         this.jytacajiw();
         this.kakole();
         var _loc3_:Mes = Duq.pamazo();
         if(_loc3_)
         {
            _loc5_=_loc3_.getInstance(Account);
            _loc5_.cipyrapyq("BestLevel",this.lefekuzuf());
            _loc5_.cipyrapyq("BestFame",this.rakezeg());
            _loc5_.cipyrapyq("NumStars",this.numStars_);
         }
         this.bapikoqan=new Object();
         for each (_loc4_ in this.jiliw.ClassAvailabilityList.ClassAvailability)
         {
            this.bapikoqan[_loc4_.@id.toString()]=_loc4_.toString();
         }
         return;
      }

      public static const SAVED_CHARS_LIST:String = "SAVED_CHARS_LIST";

      public static const nogyja:String = "available";

      public static const foh:String = "unavailable";

      public static const hukato:String = "unrestricted";

      private static const lyq:Cyp = new Cyp(37.4436,-122.412);

      private var bado:String;

      private var jiliw:XML;

      public var accountId_:int;

      public var nextCharId_:int;

      public var maxNumChars_:int;

      public var numChars_:int = 0;

      public var savedChars_:Vector.<SavedCharacter>;

      public var charStats_:Object;

      public var totalFame_:int = 0;

      public var qyp:int = 0;

      public var credits_:int = 0;

      public var numStars_:int = 0;

      public var nextCharSlotPrice_:int;

      public var guildName_:String;

      public var guildRank_:int;

      public var name_:String = null;

      public var dihap:Boolean;

      public var converted_:Boolean;

      public var dygijy:Boolean;

      public var pebaqo:Vector.<Zaz>;

      public var cyzyloq:Cyp;

      public var lad:Boolean = false;

      public var bapikoqan:Object;

      public var isAgeVerified:Boolean;

      public function zana(param1:int) : SavedCharacter {
         var _loc5_:* = false;
         var _loc6_:* = true;
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

      private function wikykane(param1:XML) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.accountId_=param1.AccountId;
         this.name_=param1.Name;
         this.dihap=param1.hasOwnProperty("NameChosen");
         this.converted_=param1.hasOwnProperty("Converted");
         this.dygijy=param1.hasOwnProperty("Admin");
         this.totalFame_=int(param1.Stats.TotalFame);
         this.qyp=int(param1.Stats.Fame);
         this.credits_=int(param1.Credits);
         this.nextCharSlotPrice_=int(param1.NextCharSlotPrice);
         this.isAgeVerified=!(this.accountId_==0)&&param1.IsAgeVerified==1;
         this.lad=!param1.hasOwnProperty("isFirstDeath");
         return;
      }

      private function robacuc(param1:XML) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = NaN;
         var _loc3_:Jawojicyw = null;
         if(param1.hasOwnProperty("BeginnerPackageTimeLeft"))
         {
            _loc2_=param1.BeginnerPackageTimeLeft;
            _loc3_=this.nubilap();
            _loc3_.cydasina(_loc2_);
         }
         return;
      }

      private function nubilap() : Jawojicyw {
         var _loc1_:Mes = Duq.pamazo();
         var _loc2_:Jawojicyw = _loc1_.getInstance(Jawojicyw);
         return _loc2_;
      }

      private function rijapyta(param1:XML) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = null;
         if(param1.hasOwnProperty("Guild"))
         {
            _loc2_=XML(param1.Guild);
            this.guildName_=_loc2_.Name;
            this.guildRank_=int(_loc2_.Rank);
         }
         return;
      }

      private function cogipy() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:XML = null;
         this.nextCharId_=int(this.jiliw.@nextCharId);
         this.maxNumChars_=int(this.jiliw.@maxNumChars);
         for each (_loc1_ in this.jiliw.Char)
         {
            this.savedChars_.push(new SavedCharacter(_loc1_,this.name_));
            this.numChars_++;
         }
         this.savedChars_.sort(SavedCharacter.sokaqobod);
         return;
      }

      private function kocepurur() : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:XML = null;
         var _loc3_:* = 0;
         var _loc4_:Zef = null;
         var _loc1_:XML = XML(this.jiliw.Account.Stats);
         for each (_loc2_ in _loc1_.ClassStats)
         {
            _loc3_=int(_loc2_.@objectType);
            _loc4_=new Zef(_loc2_);
            this.numStars_=this.numStars_+_loc4_.numStars();
            this.charStats_[_loc3_]=_loc4_;
         }
         return;
      }

      private function vejavehu() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:XML = null;
         var _loc1_:XML = XML(this.jiliw.News);
         for each (_loc2_ in _loc1_.Item)
         {
            this.pebaqo.push(new Zaz(_loc2_.Icon,_loc2_.Title,_loc2_.TagLine,_loc2_.Link,int(_loc2_.Date)));
         }
         return;
      }

      private function jytacajiw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.jiliw.hasOwnProperty("Lat"))&&(this.jiliw.hasOwnProperty("Long")))
         {
            this.cyzyloq=new Cyp(Number(this.jiliw.Lat),Number(this.jiliw.Long));
         }
         else
         {
            this.cyzyloq=lyq;
         }
         return;
      }

      public function bestLevel(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Zef = this.charStats_[param1];
         return _loc2_==null?0:_loc2_.bestLevel();
      }

      public function lefekuzuf() : int {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Zef = null;
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

      public function lysatul(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Zef = this.charStats_[param1];
         return _loc2_==null?0:_loc2_.lysatul();
      }

      public function rakezeg() : int {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Zef = null;
         var _loc1_:* = 0;
         for each (_loc2_ in this.charStats_)
         {
            if(_loc2_.lysatul()>_loc1_)
            {
               _loc1_=_loc2_.lysatul();
            }
         }
         return _loc1_;
      }

      public function wiweh(param1:int) : Boolean {
         var [OFS3]_loc7_:* = [/OFS]false;
         var [OFS5]_loc8_:* = [/OFS]true;
         var [OFS12]_loc3_:XML = [/OFS][OFS9]null[/OFS];
         var [OFS15]_loc4_:* = [/OFS][OFS13]0[/OFS];
         var [OFS28]_loc2_:XML = [/OFS][OFS17]ObjectLibrary[/OFS].[OFS19]ziq[/OFS][[OFS22]param1[/OFS]];
         for each (_loc3_ in [OFS33]_loc2_[/OFS].[OFS34]UnlockLevel[/OFS])
         {
            [OFS67]_loc4_=[/OFS][OFS53]ObjectLibrary[/OFS].[OFS55]nezuwy[/OFS][[OFS58]_loc3_[/OFS].[OFS59]toString[/OFS][OFS59]([/OFS][OFS59])[/OFS]];
            if(this.[OFS72]bestLevel[/OFS][OFS72]([/OFS][OFS70]_loc4_[/OFS][OFS72])[/OFS][OFS85]<[/OFS][OFS82]int[/OFS][OFS82]([/OFS][OFS78]_loc3_[/OFS].[OFS79]@level[/OFS][OFS82])[/OFS])
            {
               [OFS90]return [/OFS]false;
            }
         }
         [OFS103]return [/OFS]true;
      }

      public function mijido() : int {
         return this.maxNumChars_-this.numChars_;
      }

      public function hasAvailableCharSlot() : Boolean {
         return this.numChars_<this.maxNumChars_;
      }

      public function cisi(param1:int, param2:int) : Array {
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
         while(_loc4_<ObjectLibrary.vemociged.length)
         {
            _loc5_=ObjectLibrary.vemociged[_loc4_];
            _loc6_=int(_loc5_.@type);
            if(this.wiweh(_loc6_))
            {
            }
            else
            {
               _loc7_=true;
               _loc8_=false;
               for each (_loc9_ in _loc5_.UnlockLevel)
               {
                  _loc10_=ObjectLibrary.nezuwy[_loc9_.toString()];
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
         return new Jys(this.bado);
      }

      override public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "["+" numChars: "+this.numChars_+" maxNumChars: "+this.maxNumChars_+" ]";
      }

      private var account:Account;

      private function kakole() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Mes = Duq.pamazo();
         if(_loc1_)
         {
            this.account=_loc1_.getInstance(Account);
         }
         return;
      }

      private function vuf() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_<ObjectLibrary.vemociged.length)
         {
            _loc3_=ObjectLibrary.vemociged[_loc2_];
            _loc4_=int(_loc3_.@type);
            if(this.wiweh(_loc4_))
            {
               this.account.cipyrapyq(_loc3_.@id+"Unlocked",1);
               _loc1_++;
            }
            _loc2_++;
         }
         this.account.cipyrapyq("ClassesUnlocked",_loc1_);
         return;
      }
   }

}