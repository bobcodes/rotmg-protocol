package com.company.assembleegameclient.objects
{
[CLASS1147]   import com.company.assembleegameclient.map.Map;
   import flash.utils.Dictionary;
   import com.company.util.PointUtil;
   import mywyvuryw.Tena;


   public class Vevobeb extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Vevobeb(param1:Map) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cica=[];
         this.starred_=new Dictionary(true);
         this.goc=new Dictionary(true);
         super();
         this.map_=param1;
         return;
      }

      public static const myjeret:int = 6;

      private static const dimabob:Array = ["starred_","distSqFromThisPlayer_","objectId_"];

      private static const gunemecy:Array = [Array.NUMERIC|Array.DESCENDING,Array.NUMERIC,Array.NUMERIC];

      private static const kavaf:int = 50*50;

      public var map_:Map;

      public var cica:Array;

      private var starred_:Dictionary;

      private var goc:Dictionary;

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
         this.cica.length=0;
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
               _loc5_.goc=!(this.goc[_loc5_.accountId_]==undefined);
               _loc5_.distSqFromThisPlayer_=PointUtil.hakimo(_loc3_.x_,_loc3_.y_,_loc5_.x_,_loc5_.y_);
               if(_loc5_.distSqFromThisPlayer_>kavaf&&!_loc5_.starred_)
               {
               }
               else
               {
                  this.cica.push(_loc5_);
               }
            }
         }
         this.cica.sortOn(dimabob,gunemecy);
         if(this.cica.length>myjeret)
         {
            this.cica.length=myjeret;
         }
         return;
      }

      public function tuda(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.starred_[param1.accountId_]=1;
         this.lastUpdate_=int.MIN_VALUE;
         this.map_.gs_.gsc_.editAccountList(0,true,param1.objectId_);
         return;
      }

      public function pacy(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         delete this.starred_[[param1.accountId_]];
         param1.starred_=false;
         this.lastUpdate_=int.MIN_VALUE;
         this.map_.gs_.gsc_.editAccountList(0,false,param1.objectId_);
         return;
      }

      public function setStars(param1:Tena) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
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

      public function hajavekiw(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.goc[param1.accountId_]=1;
         this.lastUpdate_=int.MIN_VALUE;
         this.map_.gs_.gsc_.editAccountList(1,true,param1.objectId_);
         return;
      }

      public function qajiryg(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         delete this.goc[[param1.accountId_]];
         param1.goc=false;
         this.lastUpdate_=int.MIN_VALUE;
         this.map_.gs_.gsc_.editAccountList(1,false,param1.objectId_);
         return;
      }

      public function setIgnores(param1:Tena) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         this.goc=new Dictionary(true);
         var _loc2_:* = 0;
         while(_loc2_<param1.accountIds_.length)
         {
            _loc3_=param1.accountIds_[_loc2_];
            this.goc[_loc3_]=1;
            this.lastUpdate_=int.MIN_VALUE;
            _loc2_++;
         }
         return;
      }
   }
[/CLASS]
}