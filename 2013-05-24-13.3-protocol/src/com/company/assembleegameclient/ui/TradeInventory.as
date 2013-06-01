package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.game.Nukomesih;
   import com.company.ui.Sytubyvyg;
   import movimet.Lufub;
   import __AS3__.vec.Vector;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.Sire;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import cypujavop.Quwusyve;
   import flash.filters.DropShadowFilter;
   import pirus.Lekakyry;


   public class TradeInventory extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function TradeInventory(param1:Nukomesih, param2:String, param3:Vector.<Quwusyve>, param4:Boolean) {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc5_:* = 0;
         var _loc6_:Quwusyve = null;
         var _loc7_:Kidyc = null;
         this.negunih=new Vector.<Kidyc>();
         super();
         this.gs_=param1;
         this.doher=param2;
         this.nameText_=new Sytubyvyg(20,11776947,false,0,0);
         this.nameText_.setBold(true);
         this.nameText_.x=0;
         this.nameText_.y=0;
         this.nameText_.text=this.doher;
         this.nameText_.nuji();
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nameText_);
         this.taglineText_=new Lufub().setSize(12).setColor(11776947);
         this.taglineText_.x=0;
         this.taglineText_.y=22;
         this.taglineText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.taglineText_);
         _loc5_=0;
         while(_loc5_<Lekakyry.bibole+Lekakyry.mucitify)
         {
            _loc6_=param3[_loc5_];
            _loc7_=new Kidyc(_loc6_.item_,_loc6_.ricotigem,_loc6_.included_,_loc6_.bara,_loc5_-3,gujoj[_loc5_],_loc5_);
            _loc7_.tysyh(this.gs_.map.player_);
            _loc7_.x=int(_loc5_%4)*(Slot.WIDTH+4);
            _loc7_.y=int(_loc5_/4)*(Slot.HEIGHT+4)+46;
            if((param4)&&(_loc6_.ricotigem))
            {
               _loc7_.addEventListener(MouseEvent.MOUSE_DOWN,this.finoni);
            }
            this.negunih.push(_loc7_);
            addChild(_loc7_);
            _loc5_++;
         }
         return;
      }

      private static const hokedokep:Array = [0,0,0,0];

      private static const gujoj:Array = [[1,0,0,1],hokedokep,hokedokep,[0,1,1,0],[1,0,0,0],hokedokep,hokedokep,[0,1,0,0],[0,0,0,1],hokedokep,hokedokep,[0,0,1,0]];

      public static const godeje:int = 0;

      public static const fis:int = 1;

      public static const kezed:int = 2;

      public static const bevevynu:int = 3;

      public var gs_:Nukomesih;

      public var doher:String;

      private var wudemut:int;

      private var nameText_:Sytubyvyg;

      private var taglineText_:Lufub;

      public var negunih:Vector.<Kidyc>;

      public function byjigi() : Vector.<Boolean> {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Vector.<Boolean> = new Vector.<Boolean>();
         var _loc2_:* = 0;
         while(_loc2_<this.negunih.length)
         {
            _loc1_.push(this.negunih[_loc2_].included_);
            _loc2_++;
         }
         return _loc1_;
      }

      public function qytid(param1:Vector.<Boolean>) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_<this.negunih.length)
         {
            this.negunih[_loc2_].setIncluded(param1[_loc2_]);
            _loc2_++;
         }
         return;
      }

      public function cyziwugez(param1:Vector.<Boolean>) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_<this.negunih.length)
         {
            if(param1[_loc2_]!=this.negunih[_loc2_].included_)
            {
               return false;
            }
            _loc2_++;
         }
         return true;
      }

      public function kam() : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_<this.negunih.length)
         {
            if(this.negunih[_loc2_].included_)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }

      public function cet() : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 4;
         while(_loc2_<this.negunih.length)
         {
            if(this.negunih[_loc2_].isEmpty())
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }

      public function nidub(param1:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = "";
         switch(param1)
         {
            case godeje:
               this.nameText_.setColor(11776947);
               this.taglineText_.setColor(11776947);
               _loc2_=I18nKeys.wemyfuz;
               break;
            case fis:
               this.nameText_.setColor(16711680);
               this.taglineText_.setColor(16711680);
               _loc2_=I18nKeys.cafeluhen;
               break;
            case kezed:
               this.nameText_.setColor(9022300);
               this.taglineText_.setColor(9022300);
               _loc2_=I18nKeys.lysycoli;
               break;
            case bevevynu:
               this.nameText_.setColor(11776947);
               this.taglineText_.setColor(11776947);
               _loc2_=I18nKeys.nojipo;
               break;
         }
         this.taglineText_.setStringBuilder(new Sire().setParams(_loc2_));
         return;
      }

      private function finoni(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Kidyc = param1.currentTarget as Kidyc;
         _loc2_.setIncluded(!_loc2_.included_);
         dispatchEvent(new Event(Event.CHANGE));
         return;
      }
   }

}