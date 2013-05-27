package com.company.assembleegameclient.appengine
{
   import flash.events.Event;
   import kogyc.Mile;
   import __AS3__.vec.Vector;
   import kagijawil.Cibiqot;
   import jag.Giq;
   import kyco.Nun;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import ruwa.Account;


   public class Kewisesa extends Event
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Kewisesa(param1:String) {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:* = undefined;
         var _loc5_:Account = null;
         this.savedChars_=new Vector.<SavedCharacter>();
         this.charStats_={};
         this.sab=new Vector.<Fuzileh>();
         super(SAVED_CHARS_LIST);
         this.mozily=param1;
         this.hawo=new XML(this.mozily);
         var _loc2_:XML = XML(this.hawo.Account);
         this.vedaga(_loc2_);
         this.zekoryfoz(_loc2_);
         this.mujinukyz(_loc2_);
         this.gygyqizy();
         this.pecugojec();
         this.lemokicu();
         this.sawuze();
         this.pibijil();
         var _loc3_:Nun = Giq.kid();
         if(_loc3_)
         {
            _loc5_=_loc3_.getInstance(Account);
            _loc5_.lusysises("BestLevel",this.jowizafoc());
            _loc5_.lusysises("BestFame",this.rulo());
            _loc5_.lusysises("NumStars",this.numStars_);
         }
         this.jepacil=new Object();
         for each (_loc4_ in this.hawo.ClassAvailabilityList.ClassAvailability)
         {
            this.jepacil[_loc4_.@id.toString()]=_loc4_.toString();
         }
         return;
      }

      public static const SAVED_CHARS_LIST:String = "SAVED_CHARS_LIST";

      public static const lyfyzole:String = "available";

      public static const wih:String = "unavailable";

      public static const pisomykir:String = "unrestricted";

      private static const tafyv:Mile = new Mile(37.4436,-122.412);

      private var mozily:String;

      private var hawo:XML;

      public var accountId_:int;

      public var nextCharId_:int;

      public var maxNumChars_:int;

      public var numChars_:int = 0;

      public var savedChars_:Vector.<SavedCharacter>;

      public var charStats_:Object;

      public var totalFame_:int = 0;

      public var kotobi:int = 0;

      public var credits_:int = 0;

      public var numStars_:int = 0;

      public var nextCharSlotPrice_:int;

      public var guildName_:String;

      public var guildRank_:int;

      public var name_:String = null;

      public var wiz:Boolean;

      public var converted_:Boolean;

      public var luvu:Boolean;

      public var sab:Vector.<Fuzileh>;

      public var piqona:Mile;

      public var cygah:Boolean = false;

      public var jepacil:Object;

      public var isAgeVerified:Boolean;

      public function joqy(param1:int) : SavedCharacter {
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

      private function vedaga(param1:XML) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.accountId_=param1.AccountId;
         this.name_=param1.Name;
         this.wiz=param1.hasOwnProperty("NameChosen");
         this.converted_=param1.hasOwnProperty("Converted");
         this.luvu=param1.hasOwnProperty("Admin");
         this.totalFame_=int(param1.Stats.TotalFame);
         this.kotobi=int(param1.Stats.Fame);
         this.credits_=int(param1.Credits);
         this.nextCharSlotPrice_=int(param1.NextCharSlotPrice);
         this.isAgeVerified=!(this.accountId_==0)&&param1.IsAgeVerified==1;
         this.cygah=!param1.hasOwnProperty("isFirstDeath");
         return;
      }

      private function zekoryfoz(param1:XML) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = NaN;
         var _loc3_:Cibiqot = null;
         if(param1.hasOwnProperty("BeginnerPackageTimeLeft"))
         {
            _loc2_=param1.BeginnerPackageTimeLeft;
            _loc3_=this.hyv();
            _loc3_.novebe(_loc2_);
         }
         return;
      }

      private function hyv() : Cibiqot {
         var _loc1_:Nun = Giq.kid();
         var _loc2_:Cibiqot = _loc1_.getInstance(Cibiqot);
         return _loc2_;
      }

      private function mujinukyz(param1:XML) : void {
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

      private function gygyqizy() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:XML = null;
         this.nextCharId_=int(this.hawo.@nextCharId);
         this.maxNumChars_=int(this.hawo.@maxNumChars);
         for each (_loc1_ in this.hawo.Char)
         {
            this.savedChars_.push(new SavedCharacter(_loc1_,this.name_));
            this.numChars_++;
         }
         this.savedChars_.sort(SavedCharacter.bynuqome);
         return;
      }

      private function pecugojec() : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:XML = null;
         var _loc3_:* = 0;
         var _loc4_:Lycuhej = null;
         var _loc1_:XML = XML(this.hawo.Account.Stats);
         for each (_loc2_ in _loc1_.ClassStats)
         {
            _loc3_=int(_loc2_.@objectType);
            _loc4_=new Lycuhej(_loc2_);
            this.numStars_=this.numStars_+_loc4_.numStars();
            this.charStats_[_loc3_]=_loc4_;
         }
         return;
      }

      private function lemokicu() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:XML = null;
         var _loc1_:XML = XML(this.hawo.News);
         for each (_loc2_ in _loc1_.Item)
         {
            this.sab.push(new Fuzileh(_loc2_.Icon,_loc2_.Title,_loc2_.TagLine,_loc2_.Link,int(_loc2_.Date)));
         }
         return;
      }

      private function sawuze() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.hawo.hasOwnProperty("Lat"))&&(this.hawo.hasOwnProperty("Long")))
         {
            this.piqona=new Mile(Number(this.hawo.Lat),Number(this.hawo.Long));
         }
         else
         {
            this.piqona=tafyv;
         }
         return;
      }

      public function bestLevel(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Lycuhej = this.charStats_[param1];
         return _loc2_==null?0:_loc2_.bestLevel();
      }

      public function jowizafoc() : int {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Lycuhej = null;
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

      public function gat(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Lycuhej = this.charStats_[param1];
         return _loc2_==null?0:_loc2_.gat();
      }

      public function rulo() : int {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Lycuhej = null;
         var _loc1_:* = 0;
         for each (_loc2_ in this.charStats_)
         {
            if(_loc2_.gat()>_loc1_)
            {
               _loc1_=_loc2_.gat();
            }
         }
         return _loc1_;
      }

      public function zuzonyrop(param1:int) : Boolean {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc2_:XML = ObjectLibrary.tem[param1];
         for each (_loc3_ in _loc2_.UnlockLevel)
         {
            _loc4_=ObjectLibrary.tumu[_loc3_.toString()];
            if(this.bestLevel(_loc4_)<int(_loc3_.@level))
            {
               return false;
            }
         }
         return true;
      }

      public function buzynucy() : int {
         return this.maxNumChars_-this.numChars_;
      }

      public function hasAvailableCharSlot() : Boolean {
         return this.numChars_<this.maxNumChars_;
      }

      public function zuquvorab(param1:int, param2:int) : Array {
         var _loc14_:* = true;
         var _loc15_:* = false;
         var _loc5_:XML = null;
         var _loc6_:* = 0;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc9_:XML = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc3_:Array = new Array();
         var _loc4_:* = 0;
         while(_loc4_<ObjectLibrary.supy.length)
         {
            _loc5_=ObjectLibrary.supy[_loc4_];
            _loc6_=int(_loc5_.@type);
            if(this.zuzonyrop(_loc6_))
            {
            }
            else
            {
               _loc7_=true;
               _loc8_=false;
               for each (_loc9_ in _loc5_.UnlockLevel)
               {
                  _loc10_=ObjectLibrary.tumu[_loc9_.toString()];
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
         return new Kewisesa(this.mozily);
      }

      override public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "["+" numChars: "+this.numChars_+" maxNumChars: "+this.maxNumChars_+" ]";
      }

      private var account:Account;

      private function pibijil() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Nun = Giq.kid();
         if(_loc1_)
         {
            this.account=_loc1_.getInstance(Account);
         }
         return;
      }

      private function wov() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_<ObjectLibrary.supy.length)
         {
            _loc3_=ObjectLibrary.supy[_loc2_];
            _loc4_=int(_loc3_.@type);
            if(this.zuzonyrop(_loc4_))
            {
               this.account.lusysises(_loc3_.@id+"Unlocked",1);
               _loc1_++;
            }
            _loc2_++;
         }
         this.account.lusysises("ClassesUnlocked",_loc1_);
         return;
      }
   }

}