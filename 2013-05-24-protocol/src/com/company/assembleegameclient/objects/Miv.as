package com.company.assembleegameclient.objects
{
   import com.company.assembleegameclient.map.Map;
   import flash.utils.Dictionary;
   import com.company.util.PointUtil;
   import quqe.Vadu;


   public class Miv extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Miv(param1:Map) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cotehic=[];
         this.starred_=new Dictionary(true);
         this.diqyj=new Dictionary(true);
         super();
         this.map_=param1;
         return;
      }

      public static const gupulelaz:int = 6;

      private static const folypyr:Array = ["starred_","distSqFromThisPlayer_","objectId_"];

      private static const vacam:Array = [Array.NUMERIC|Array.DESCENDING,Array.NUMERIC,Array.NUMERIC];

      private static const reryti:int = 50*50;

      public var map_:Map;

      public var cotehic:Array;

      private var starred_:Dictionary;

      private var diqyj:Dictionary;

      private var lastUpdate_:int = -2147483648;

      public function update(param1:int, param2:int) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:GameObject = null;
         var _loc5_:Player = null;
         if(param1<this.lastUpdate_+500)
         {
            return;
         }
         this.lastUpdate_=param1;
         this.cotehic.length=0;
         var _loc3_:Player = this.map_.player_;
         if(_loc3_==null)
         {
            return;
         }
         for each (_loc4_ in this.map_.goDict_)
         {
            _loc5_=_loc4_ as Player;
            if(_loc5_==null||_loc5_==_loc3_)
            {
            }
            else
            {
               if(this.starred_[_loc5_.accountId_]!=undefined)
               {
                  _loc5_.starred_=true;
               }
               _loc5_.diqyj=!(this.diqyj[_loc5_.accountId_]==undefined);
               _loc5_.distSqFromThisPlayer_=PointUtil.munidake(_loc3_.x_,_loc3_.y_,_loc5_.x_,_loc5_.y_);
               if(_loc5_.distSqFromThisPlayer_>reryti&&!_loc5_.starred_)
               {
               }
               else
               {
                  this.cotehic.push(_loc5_);
               }
            }
         }
         this.cotehic.sortOn(folypyr,vacam);
         if(this.cotehic.length>gupulelaz)
         {
            this.cotehic.length=gupulelaz;
         }
         return;
      }

      public function vyha(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.starred_[param1.accountId_]=1;
         this.lastUpdate_=int.MIN_VALUE;
         this.map_.gs_.gsc_.editAccountList(0,true,param1.objectId_);
         return;
      }

      public function zusis(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         delete this.starred_[[param1.accountId_]];
         param1.starred_=false;
         this.lastUpdate_=int.MIN_VALUE;
         this.map_.gs_.gsc_.editAccountList(0,false,param1.objectId_);
         return;
      }

      public function setStars(param1:Vadu) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_<param1.accountIds_.length)
         {
            _loc3_=param1.accountIds_[_loc2_];
            this.starred_[_loc3_]=1;
            this.lastUpdate_=int.MIN_VALUE;
            _loc2_++;
         }
         return;
      }

      public function jujedemo(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.diqyj[param1.accountId_]=1;
         this.lastUpdate_=int.MIN_VALUE;
         this.map_.gs_.gsc_.editAccountList(1,true,param1.objectId_);
         return;
      }

      public function fybofip(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         delete this.diqyj[[param1.accountId_]];
         param1.diqyj=false;
         this.lastUpdate_=int.MIN_VALUE;
         this.map_.gs_.gsc_.editAccountList(1,false,param1.objectId_);
         return;
      }

      public function setIgnores(param1:Vadu) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         this.diqyj=new Dictionary(true);
         var _loc2_:* = 0;
         while(_loc2_<param1.accountIds_.length)
         {
            _loc3_=param1.accountIds_[_loc2_];
            this.diqyj[_loc3_]=1;
            this.lastUpdate_=int.MIN_VALUE;
            _loc2_++;
         }
         return;
      }
   }

}